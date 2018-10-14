#include "llvm/IR/Module.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Value.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/CommandLine.h"

#include <fstream>
#include <algorithm>

using namespace llvm;

namespace 
{
	cl::opt<std::string> function_name("func", cl::desc("Specify function"), cl::value_desc("function")); // YAAAAAAAAAAAAAAAASSSS
	cl::opt<std::string> test_function_name("testfunc", cl::desc("Specify test function"), cl::value_desc("test function")); 
	
	struct DoesACallB : public ModulePass 
	{
		static char ID;
		DoesACallB() : ModulePass(ID) {}	

		std::ofstream outfile;
		std::string data;

		virtual bool runOnModule(Module &M)
		{
			//errs() << "hi: " << test_function_name << "\n";
			outfile.open("outputss/existsInTest.txt");
			for(Module::iterator F= M.begin(), E = M.end(); F != E; ++F) // iterating over functions in a module
			{
				std::string current_function = F->getName();
				if(current_function.find(test_function_name) != std::string::npos)
				{
					Function::iterator FI = F->begin();
					for (BasicBlock::iterator I = FI->begin(), E = FI->end(); I != E; ++I)
					{
						if(isa<CallInst>(I)) 
						{
							CallInst* CI = cast<CallInst>(I);
							Function* calledFunction = CI->getCalledFunction();
							std::string called_function_name = calledFunction->getName();
							if(calledFunction->getName() == function_name)
							{
								outfile << 1;
								break;
							}
						}
						if(isa<InvokeInst>(I)) 
						{
							InvokeInst* II = cast<InvokeInst>(I);
							Function* calledFunction = II->getCalledFunction();
							if(calledFunction->getName() == function_name)
							{
								outfile << 1;
								break;
							}
						}
					}
					break;
				}
			}
			outfile.close();
			return false;
		}
	};
}


char DoesACallB::ID = 0;
static RegisterPass<DoesACallB> X("DoesACallB", "DoesACallB Pass");