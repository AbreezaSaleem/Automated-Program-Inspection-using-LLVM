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
#include "llvm/IR/Constants.h"

#include <fstream>
#include <algorithm>

using namespace llvm;

namespace 
{
	cl::opt<std::string> function_name("fun", cl::desc("Specify function"), cl::value_desc("function")); // YAAAAAAAAAAAAAAAASSSS
	struct FunctionTestor : public ModulePass 	// i'm so kewl											
	{
		static char ID;
		FunctionTestor() : ModulePass(ID) {}

		virtual bool runOnModule(Module &M)
		{
			for(Module::iterator FI = M.begin(), E = M.end(); FI != E; ++FI) // iterating over functions in a module
			{
				std::string current_function = FI->getName();
				if(function_name == current_function)
				{
					errs() << *FI << "\n"; 
				}
			}
			return false;
		}
	};
}


char FunctionTestor::ID = 0;
static RegisterPass<FunctionTestor> X("FunctionTestor", "FunctionTestor Pass");
