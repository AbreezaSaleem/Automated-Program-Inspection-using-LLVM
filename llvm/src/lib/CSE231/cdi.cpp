#include <map>
#include <string>
#include "llvm/IR/Module.h"
#include "llvm/IR/Instruction.h"
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Type.h"

using namespace llvm;

namespace 
{
	struct cdi: public ModulePass 
	{
    	static char ID; // Pass identification, replacement for typeid
    	int total;
    	
    	cdi() : ModulePass(ID) {}

    	virtual bool runOnModule(Module &M)
    	{
    		Value* instructionName;
            //Value* instructionCount;
            ConstantInt* instructionCount;
            std::vector <Value*> Args;
            std::map<std::string, int> instructionsCount;

            std::vector<Type*>FuncTy_13_args;
            FunctionType* FuncTy_13 = FunctionType::get(
            /*Result=*/Type::getVoidTy(M.getContext()),
            /*Params=*/FuncTy_13_args,
            /*isVarArg=*/false);
          
            PointerType* PointerTy_2 = PointerType::get(IntegerType::get(M.getContext(), 8), 0);
            std::vector<Type*>FuncTy_25_args;
            FuncTy_25_args.push_back(PointerTy_2);
            FuncTy_25_args.push_back(IntegerType::get(M.getContext(), 32));
            FunctionType* FuncTy_25 = FunctionType::get(
            /*Result=*/Type::getVoidTy(M.getContext()),
            /*Params=*/FuncTy_25_args,
            /*isVarArg=*/false);
            const char*name;
            for(Module::iterator F=M.begin(),ModuleEnd=M.end();F!=ModuleEnd;F++)
    		{	
                for(Function::iterator currentBlock=F->begin(), LastBlock=F->end(); currentBlock!=LastBlock;currentBlock++)
                {   
                    BasicBlock &B=*currentBlock;

                    for(BasicBlock::iterator I=currentBlock->begin(), lastI=currentBlock->end(); I!=lastI; I++)
                    {   
                        //errs() <<  "IN A BasicBlock " <<I->getOpcodeName() << "\n";

                                    
                    

                        if(instructionsCount.find(I->getOpcodeName())==instructionsCount.end())
                        {
                            instructionsCount[I->getOpcodeName()]=1;
                          //  errs() << "instruction Stored\n";
                        }
                        else
                        {
                                instructionsCount[I->getOpcodeName()]=instructionsCount[I->getOpcodeName()]+1;
                               // errs() << "instruction Stored\n"; 
                        }

                        

                    }

                    IRBuilder<> Builder(currentBlock);
                    BasicBlock::iterator BBLastInstruction=currentBlock->end();
                    BBLastInstruction--;
                    //errs() << " =((" << BBLastInstruction->getOpcodeName() << "\n";
                    Builder.SetInsertPoint(BBLastInstruction);
                            
                    Function* C= cast<Function> (M.getOrInsertFunction("_Z24CountInstructionsOverallPci",FuncTy_25));                        
                                                                                
                    for(std::map<std::string, int>:: const_iterator i=instructionsCount.begin();i!=instructionsCount.end();i++)
                    {
                                name=(i->first).c_str();   
                                //errs() << name << " Instructions being passed in for loop\n";
                                instructionName=Builder.CreateGlobalStringPtr(name);
                                //static ConstantInt *    getSigned (IntegerType *Ty, int64_t V)
                                instructionCount= Builder.getInt32(i->second);
                               // instructionCount=ConstantInt::get(IntegerType::getInt32Ty(M.getContext()),i->second );
                                Args.push_back(instructionName);
                                Args.push_back(instructionCount);
                               // errs()<< "call main masla \n";
                               // errs() << "fine " << i->first << i->second << " " << Args[0]->getType() << Args[1]->getType() << "fog";
                                Builder.CreateCall(C,Args);   
                                Args.clear();
                    }
                                            
                instructionsCount.clear();
                
                        
                }

                if(F->getName()=="main")
                {
                    Function::iterator FunctionLastBlock=F->end();
                    IRBuilder< > Builder(--FunctionLastBlock);
                    BasicBlock::iterator BBLastInstruction=FunctionLastBlock->end();
                    Builder.SetInsertPoint(--BBLastInstruction);
                    Function* P= cast<Function> (M.getOrInsertFunction("_Z5printv",FuncTy_13));  

                    Builder.CreateCall(P,None);
                }
                    //errs() << "did ndksdjot reach here\n";

                
            }


    		

    	 	return false;

    	}

    	

   
  	};
}


char cdi::ID=0;
static RegisterPass<cdi> X("cdi", "Count Dynamic Instructions Pass");