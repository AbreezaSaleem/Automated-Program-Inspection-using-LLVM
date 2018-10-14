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
#include <algorithm>

using namespace llvm;

namespace 
{
	struct GetSolFunctions : public ModulePass 
	{
		static char ID;
		GetSolFunctions() : ModulePass(ID) { getUserFunctions(); }	

		std::ifstream infile;
		std::string data;

		void getUserFunctions()
		{
			infile.open("outputss/functionName.txt");
			infile >> data;
			infile.close();
		}

		virtual bool runOnModule(Module &M)
		{
			for(Module::iterator F= M.begin(), E = M.end(); F != E; ++F) // iterating over functions in a module
			{
				std::string function_name = F->getName();		
				if(data == function_name)
					F->deleteBody(); 
			}
			return false;
		}
	};
}


char GetSolFunctions::ID = 0;
static RegisterPass<GetSolFunctions> X("GetSolFunctions", "GetSolFunctions Pass");