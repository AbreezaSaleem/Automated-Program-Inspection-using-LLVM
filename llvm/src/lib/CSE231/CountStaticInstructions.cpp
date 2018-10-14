#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/InstIterator.h"
#include <string>
#include <map>

using namespace llvm;

namespace 
{
	struct CountStaticInstructions : public ModulePass 
	{
		static char ID;
		std::map<std::string, int> results;
		std::map<std::string, int>::iterator it;
		int total;

		CountStaticInstructions() : ModulePass(ID) {}

		virtual bool runOnModule(Module &M) 
		{
			errs() << "??\n";
			total = 0;
			std::string name;

			for(Module::iterator F= M.begin(), E = M.end(); F != E; F++)
			{
				for (inst_iterator I = inst_begin(F), E1 = inst_end(F); I != E1; ++I)
				{
					total++;
					name = I -> getOpcodeName();
					it = results.find(I -> getOpcodeName());
					if (results.find(name) == results.end())
						results[name] = 1;
					else
						results[name] = (it -> second) + 1;
				}
			}

			return false;
		}

		virtual void print(raw_ostream &O, const Module *M) const
		{
			for(std::map<std::string, int>::const_iterator it2 = results.begin(); it2 != results.end(); ++it2)
			{
				errs() << it2 -> first << ": " << it2 -> second << "\n";
			}
			errs() << "Total: " << total << "\n";
		}

	};
}

char CountStaticInstructions::ID = 0;
static RegisterPass<CountStaticInstructions> X("CountStaticInstructions", "CountStaticInstructions Pass");