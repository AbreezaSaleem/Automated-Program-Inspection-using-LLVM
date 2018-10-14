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
	struct SetLinkage : public ModulePass 
	{
		static char ID;
		SetLinkage() : ModulePass(ID) {}	

		std::ifstream infile;
		std::ofstream outfile;
		std::string data;
		std::string command_path = "/home/abreeza/Desktop/cse231-proj1/scriptss/";

		void getUserFunctions()
		{
			infile.open("outputss/temp.txt");
			outfile.open("outputss/exists.txt");
			infile >> data;
		}

		virtual bool runOnModule(Module &M)
		{
			
			for(llvm::Module::global_iterator G = M.global_begin(), E = M.global_end(); G != E; G++)
			{
				GlobalValue* GV = &*G;
				errs() << *GV << "\n";
				GV->setLinkage(GlobalValue::LinkerPrivateLinkage);
			}
			return false;
		}
	};
}


char SetLinkage::ID = 0;
static RegisterPass<SetLinkage> X("SetLinkage", "SetLinkage Pass");