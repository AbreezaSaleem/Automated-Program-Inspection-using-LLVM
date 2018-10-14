#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Value.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/CommandLine.h"

#include <fstream>
#include <stdlib.h>

using namespace llvm;

namespace
{
	struct TraverseFunctionCalls : public ModulePass 
	{
		static char ID;
		TraverseFunctionCalls() : ModulePass(ID) {}	

		std::ofstream outfile;
		std::ofstream outfile1;

		struct stats
		{
			int count;
			int total_functions;
			stats() {}
			stats(int c, int f): count(c), total_functions(f) {}
			void update(int c, int f)
			{
				count += c; total_functions += f;
			}
		};	
		std::map<std::string, stats> function_results;
		std::map<std::string, stats>::iterator it;
		std::map<std::string, bool> checkedFunctions;
		std::string command_path = "/home/abreeza/Desktop/cse231-proj1/scriptss/";
		
		bool isSuccessful(std::string function_name, std::string extract_command)
		{
			errs() << function_name << "\n";
			outfile.open("outputss/functionName.txt"); /// FAK I SHOULD NOT BE DOING THIS.
			outfile << function_name << "\n";
			outfile.close();
			std::string command = command_path + "hewo.sh " + extract_command + " " + function_name ;
			int result = system(command.c_str());
			errs() << "Result is: " << !result << "\n";
			return !result;
		}

		void isUserFunction(std::vector<std::string>& userDefined, std::string function_name, std::string& extract_command)
		{
			outfile1.open("outputss/temp.txt"); /// FAK I SHOULD NOT BE DOING THIS.
			outfile1 << function_name << "\n";
			outfile1.close();
			if(!checkedFunctions[function_name])  // not been checked
			{
				int result = system( (command_path + "functionExists.sh").c_str() ); // if result is not 0, function doesn't exist
				if (result)
				{
					userDefined.push_back(function_name);
					extract_command += " -func " + function_name;
					checkedFunctions[function_name] = true;
				}
				else
					checkedFunctions[function_name] = false;	
			} else 
			{
				if (checkedFunctions[function_name]) 
				{
					extract_command += " -func " + function_name;
					userDefined.push_back(function_name);
				}
			}
		}

		stats checkFunction(Function* currentFunction)
		{
			std::string function_name = currentFunction->getName();
			std::vector<std::string> userDefined;
			std::string extract_command = "\"llvm-extract -o answerStudent.bc -rglob=.str* -func " + function_name;
			stats x(0, 1);
			if(!currentFunction->isDeclaration()) // those functions which are only declared are umm... there to indicate that they
			{ // need to be referenced by another file/library during linking. So we ignorex.... right?
				Function::iterator FI = currentFunction->begin();
				for (BasicBlock::iterator I = FI->begin(), E = FI->end(); I != E; ++I)
				{
					if(isa<CallInst>(I)) 
					{
						CallInst* CI = cast<CallInst>(I);
						Function* calledFunction = CI->getCalledFunction();
						isUserFunction(userDefined, calledFunction->getName(), extract_command);
						stats y = checkFunction(calledFunction);
						x.update(y.count, y.total_functions);
					}
					else if(isa<InvokeInst>(I)) 
					{
						InvokeInst* II = cast<InvokeInst>(I);
						Function* calledFunction = II->getCalledFunction();
						isUserFunction(userDefined, calledFunction->getName(), extract_command);
						stats y = checkFunction(calledFunction);
						x.update(y.count, y.total_functions);
					}
				}
			}
			extract_command += " student.bc && llvm-dis answerStudent.bc\"";
			if(function_name == "main") 
				x.count++;
			else if(!checkedFunctions[function_name] && isSuccessful(function_name, extract_command))  // if its NOT a user function and blah blah
			{
				errs() << "Function: " << function_name << " works\n";
				x.count++;
			}
			
			function_results[function_name] = x ;
			return x;
		}

		virtual bool runOnModule(Module &M)
		{
			for(Module::iterator F= M.begin(), E = M.end(); F != E; ++F) // iterating over functions in a module
			{
				if (F->getName() == "main")
				{
					//errs() << "bitch im in main\n";
					checkFunction(F);
					break;
				}
			}

			for(std::map<std::string, stats>::const_iterator it2 = function_results.begin(); it2 != function_results.end(); ++it2)
			{
				errs() << it2 -> first << ": " << it2 -> second.count << "/" << it2 -> second.total_functions << "\n";
			}
		    return false;
		}
	};
}


char TraverseFunctionCalls::ID = 0;
static RegisterPass<TraverseFunctionCalls> X("TraverseFunctionCalls", "TraverseFunctionCalls Pass");