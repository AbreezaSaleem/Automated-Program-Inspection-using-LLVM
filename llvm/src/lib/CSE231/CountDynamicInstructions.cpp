/// Codegen part taken from https://releases.llvm.org/3.4.2/docs/tutorial/LangImpl3.html

#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/TypeBuilder.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Type.h"
#include "llvm/ADT/APInt.h"
#include <string>
#include <map>
#include <vector>

using namespace llvm;

namespace 
{
	static std::map<std::string, Value*> NamedValues;
	class ExprAST
	{
		public:
		virtual ~ExprAST() {}
		virtual Value *Codegen() = 0;
	};

	/// NumberExprAST - Expression class for numeric literals like "1.0".
	class NumberExprAST : public ExprAST 
	{
		double Val;
		public:
		NumberExprAST(double val) : Val(val) {}
		virtual Value *Codegen();
	};

	/// VariableExprAST - Expression class for referencing a variable, like "a".
	class VariableExprAST : public ExprAST 
	{
		std::string Name;
		public:
		VariableExprAST(const std::string &name) : Name(name) {}
		virtual Value *Codegen();
	};


	Value* NumberExprAST::Codegen() 
	{
		return ConstantFP::get(getGlobalContext(), APFloat(Val));
	}

	Value* VariableExprAST::Codegen() 
	{
		// Look this variable up in the function.
		Value *V = NamedValues[Name];
		return V;
	}

	struct CountDynamicInstructions : public ModulePass 
	{
		static char ID;
		const char* instruction_name;	
		std::string parent_name;

		CountDynamicInstructions() : ModulePass(ID) {}

		virtual bool runOnModule(Module &M) 
		{
			errs() << "CountDynamicInstructions\n";

			for(Module::iterator F= M.begin(), E = M.end(); F != E; ++F) // iterating over functions in a module
			{
				for (Function::iterator BB = F->begin(), E = F->end(); BB != E; ++BB)    // iterating over BB in a function
				{
					std::map<std::string, double> results;
					std::map<std::string, double>::iterator it;
					for (BasicBlock::iterator I = BB->begin(), E = BB->end(); I != E; ++I)   // iterating over the BB
					{
						parent_name = I -> getParent() -> getParent() -> getName();

						instruction_name = I -> getOpcodeName();

						it = results.find(instruction_name);
						if (it == results.end())
							results[instruction_name] = 1.0;
						else
							results[instruction_name] = (it -> second) + 1.0;

						std::string ret_name = "ret";
						std::string br_name = "br";

						if (instruction_name == ret_name || instruction_name == br_name )
						{
							Value* argsV[2]; 
							FunctionType *update_type = TypeBuilder<int(char*, double), false>::get(getGlobalContext());

							Function *update = cast<Function>(M.getOrInsertFunction("_Z6updatePcd", update_type));

							update -> setCallingConv(CallingConv::C);

							Function::arg_iterator args = update->arg_begin();
							Value* name = args++;
							name->setName("name");
							Value* count = args++;
							count->setName("count");

							IRBuilder<> builder(I);

							for ( it = results.begin(); it != results.end(); it++ )
							{
								name = builder.CreateGlobalStringPtr(it -> first);
								NumberExprAST c(it -> second);
								count = c.Codegen();
								argsV[0] = name;
								argsV[1] = count;

								builder.CreateCall(update, argsV); // Result is void      call this fucking function for every instruction 
							}
						}

						if (parent_name == "main" && instruction_name == ret_name)
						{
							FunctionType *print_type = TypeBuilder<int(char *, ...), false>::get(getGlobalContext());
							Function *print = cast<Function>(M.getOrInsertFunction("_Z5printPc", print_type));

							print -> setCallingConv(CallingConv::C);
							Function::arg_iterator args1 = print->arg_begin();
							Value* print_this = args1++;
							print_this->setName("print_this");

							IRBuilder<> builder(I);
							print_this = builder.CreateGlobalStringPtr("pls\n");
							builder.CreateCall(print, print_this);
						}
						
					}
				}
			}
			return false;
		}
	};
}

char CountDynamicInstructions::ID = 0;
static RegisterPass<CountDynamicInstructions> X("CountDynamicInstructions", "CountDynamicInstructions Pass");
