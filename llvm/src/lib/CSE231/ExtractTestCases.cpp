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
	struct ExtractTestCases : public ModulePass 
	{
		static char ID;
		ExtractTestCases() : ModulePass(ID) {}	

		std::string command_path = "/home/abreeza/Desktop/cse231-proj1/scriptss/";
		std::vector<std::string> calledFunctions;
		std::ofstream outfile;
		std::ofstream outfile1;

		void writeToFile()
		{
			outfile.open("outputss/testcases.txt");
			for(int i = 0; i < calledFunctions.size(); i++)
			{
				outfile << calledFunctions[i] << "\n";
			}
			outfile.close();
		}

		virtual bool runOnModule(Module &M)
		{
			for(Module::iterator F= M.begin(), E = M.end(); F != E; ++F) // iterating over functions in a module
			{
				if (F->getName().find("test") != std::string::npos) 
					calledFunctions.push_back(F->getName());
			}

			writeToFile();

			for(int i = 0; i < calledFunctions.size(); i++)
			{
				outfile1.open("outputss/currentTestCase.txt");
				std::string current_function = calledFunctions[i];
				outfile1 << current_function << "\n";
				outfile1.close();
				errs() << "Here... " << current_function << "\n";
				std::string command = command_path + "createTestCases.sh " + current_function;
				system(command.c_str());
			}

			return false;
		}
	};
}


char ExtractTestCases::ID = 0;
static RegisterPass<ExtractTestCases> X("ExtractTestCases", "ExtractTestCases Pass");