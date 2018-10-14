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
	cl::opt<std::string> current_function("testcase", cl::desc("Specify testcase function"), cl::value_desc("testcase_function")); 
	struct CreateTestCases : public ModulePass 
	{
		static char ID;
		CreateTestCases() : ModulePass(ID) 
		{
			readFromFile();
		}	

		std::string command_path = "/home/abreeza/Desktop/cse231-proj1/scriptss/";
		std::vector<std::string> calledFunctions;
		std::vector<llvm::Function*> toDelete;
		llvm::Function* replaceWith;
		std::ifstream infile;

		void readFromFile()
		{
			infile.open("outputss/testcases.txt"); // why use test cases? Just go to main and push back functions 
			std::string data; 						// that are != current_function?
			while (infile >> data)
			{
				calledFunctions.push_back(data);
			}
		}

		virtual bool runOnModule(Module &M)
		{
			for(Module::iterator F= M.begin(), E = M.end(); F != E; ++F) // iterating over functions in a module
			{
				std::string function_name = F->getName();
				if(function_name == "_Z7uselessRSt14basic_ofstreamIcSt11char_traitsIcEE")
					replaceWith = F;
				if((std::find(calledFunctions.begin(), calledFunctions.end(), function_name) != calledFunctions.end())
					&& function_name != current_function ) 
					toDelete.push_back(F);
			}

			for(int i = 0; i < toDelete.size(); i++)
			{
				toDelete[i]->replaceAllUsesWith(replaceWith);
				toDelete[i]->deleteBody() ;
				if(toDelete[i]->isDeclaration() && toDelete[i]->use_empty()) // better to have an assert statement here
					toDelete[i]->removeFromParent();
			}

			infile.close();

			return false;
		}
	};
}


char CreateTestCases::ID = 0;
static RegisterPass<CreateTestCases> X("CreateTestCases", "CreateTestCases Pass");