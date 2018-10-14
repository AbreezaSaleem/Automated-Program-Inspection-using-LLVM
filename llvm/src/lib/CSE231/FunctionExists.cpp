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
	//cl::opt<std::string> myvar("pls y", cl::desc("my str"));
	struct FunctionExists : public ModulePass 
	{
		static char ID;
		FunctionExists() : ModulePass(ID) {}	

		std::ifstream infile;
		std::ofstream outfile;
		std::string data;

		void getUserFunctions()
		{
			infile.open("outputss/temp.txt");
			outfile.open("outputss/exists.txt");
			infile >> data;
			infile.close();
		}

		virtual bool runOnModule(Module &M)
		{
			getUserFunctions();
			if(M.getFunction(data))
			{
				outfile << 1;
				outfile.close();
			}
			return false;
		}
	};
}


char FunctionExists::ID = 0;
static RegisterPass<FunctionExists> X("FunctionExists", "FunctionExists Pass");