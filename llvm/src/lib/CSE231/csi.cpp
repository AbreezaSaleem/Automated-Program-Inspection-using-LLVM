#include <map>
#include "llvm/IR/Module.h"
#include "llvm/IR/Instruction.h"
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/InstIterator.h"

using namespace llvm;

namespace 
{
	struct csi: public ModulePass 
	{
    	static char ID; // Pass identification, replacement for typeid
    	int total;
    	std::map< std::string, int> instructionsCount;
    	csi() : ModulePass(ID) 
    	{
    		
    	}

    	virtual bool runOnModule(Module &M)
    	{
    		//errs() << "in runOnmodule\n";
    		
    		for(Module::iterator F=M.begin(),ModuleEnd=M.end();F!=ModuleEnd;F++)
    		{	
    			//errs() << " inside module\n";
    			//try to add basic blocks
    			for(inst_iterator I = inst_begin(F), E = inst_end(F); I != E; ++I)
 				{
 					//errs() << "inside functions\n";
 					//errs() << *I << "\n";
 					//errs() << I->getOpcode() << "\n";
 					if(instructionsCount.find(I->getOpcodeName())==instructionsCount.end())
 					{
 						instructionsCount[I->getOpcodeName()]=1;
 					}
 					else
 					{
 						instructionsCount[I->getOpcodeName()]=instructionsCount[I->getOpcodeName()]+1;
 					}
 					
 				}	

    		}

    		total=0;
    		for(std::map<std::string, int>:: const_iterator i=instructionsCount.begin();i!=instructionsCount.end();i++)
    		{
    			total=total+i->second;
    		}

    		

    	 	return false;

    	}

    	virtual void print(raw_ostream &O, const Module *M) const
    	{
    		for(std::map<std::string, int>:: const_iterator i=instructionsCount.begin();i!=instructionsCount.end();i++)
    		{
    			errs() << i->first << " " << i->second << "\n";
    		
    		}
    		errs() << "TOTAL " << total; 
    	} 

   
  	};
}


char csi::ID=0;
static RegisterPass<csi> X("csi", "Count Static Instructions Pass");