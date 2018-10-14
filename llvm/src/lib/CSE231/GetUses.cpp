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
	struct GetUses : public ModulePass 
	{
		static char ID;
		GetUses() : ModulePass(ID) {}	

		std::ofstream outfile;
		std::string data;

		virtual bool runOnModule(Module &M)
		{
			for(Module::iterator F= M.begin(), E = M.end(); F != E; ++F) // iterating over functions in a module
			{
				for (Function::iterator FI = F->begin(), E = F->end(); FI != E; ++FI)    // iterating over BB in a function
				{
					for (BasicBlock::iterator I = FI->begin(), E = FI->end(); I != E; ++I) // iterating over instructions in the BB
					{
						//errs() << I->user_back() << "\n";
						Value* v = cast<Value>(I);
						errs() << "Ins: " << *I << "\n";
						errs() << "Value: " << *v << "\n";
						//v->getOperandList  ();
						errs() <<  *(I->getParent()) << "\n";
					}
				}
			}
			outfile.close();
			return false;
		}
	};
}


char GetUses::ID = 0;
static RegisterPass<GetUses> X("GetUses", "GetUses Pass");