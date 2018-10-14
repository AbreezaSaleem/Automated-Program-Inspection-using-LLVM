#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Value.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace 
{
	struct ProgramDependanceGraph : public FunctionPass 
	{
		static char ID;
		ProgramDependanceGraph() : FunctionPass(ID) {}	

		virtual bool runOnFunction(Function &FI)
		{
			std::string current_function = FI.getName();
			errs()<< "digraph " << current_function << "{\n";	 // need to change it to get the name of the module automatically
			errs() << "\n";

			for (Function::iterator F = FI.begin(), E = FI.end(); F != E; ++F)    // iterating over BB in a function
			{
				for (BasicBlock::iterator I = F->begin(), E = F->end(); I != E; ++I) // iterating over instructions in the BB
				{
					if(isa<CallInst>(I)) 
					{
						CallInst* CI = cast<CallInst>(I);
						for(int index = 0; index < CI->getNumArgOperands(); index++) 
						{
							errs() << "\"" << *(CI->getArgOperand(index)) << "\"" << " -> " << "\"" << *CI << "\"" << ";\n";
						}
					}
					else if(isa<CmpInst>(I))
					{
						errs() << "\"" << *(I->getOperand(0)) << "\"" << " -> " << "\"" <<  *I << "\"" << ";\n";
						errs() << "\"" << *(I->getOperand(1)) << "\"" << " -> " << "\"" <<  *I << "\"" << ";\n";
					} 
					else if(isa<BranchInst>(I))
					{
						BranchInst* branch = cast<BranchInst>(I);
						Value* condition = (branch->getOperand(0) );
						if(branch->getNumSuccessors() > 1)
						{
							for (unsigned II = 0, NSucc = branch->getNumSuccessors(); II < NSucc; ++II) 
							{
								BasicBlock *Succ = branch->getSuccessor(II);
								if(isa<StoreInst>(*(Succ->begin())))
								{
									StoreInst* SI2 = cast<StoreInst>((Succ->begin()));
									errs() << "\"" << *condition << "\"" << " -> " << "\"" << *(SI2->getValueOperand()) << "\"" << ";\n";
								}
								else
								{
									errs() << "\"" << *condition << "\"" << " -> " << "\"" <<  *(Succ->begin()) << "\"" << ";\n";
								}
							}
						}
						else
						{
							if(isa<StoreInst>( *(branch->getSuccessor(0)->begin())))
							{
								StoreInst* SI3 = cast<StoreInst>((branch->getSuccessor(0)->begin()));
								errs() << "\"" << *I << "\"" << " -> " << "\"" << *(SI3->getValueOperand()) << "\"" << ";\n";
							}
							else
								errs() << "\"" << *I << "\"" << " -> " << "\"" << *(branch->getSuccessor(0)->begin()) << "\"" << ";\n";
						}
					}
					else if(isa<AllocaInst>(I))
					{
						AllocaInst* AI = cast<AllocaInst>(I);
						errs() << "\"" << *AI << "\"" << ";\n";
					}
					else if(isa<StoreInst>(I))
					{
						StoreInst* SI = cast<StoreInst>(I);
						Value* targetValue = (SI->getPointerOperand() );
						Value* takingValue = (SI->getValueOperand() );
						errs() << "\"" << *SI << "\"" << " -> " << "\"" << *targetValue << "\"" << ";\n";
						errs() << "\"" << *takingValue << "\"" << " -> " << "\"" << *targetValue << "\"" << ";\n";

					}
					else if(isa<LoadInst>(I))
					{
						LoadInst* LI = cast<LoadInst>(I);
						Value* usingRegister = (LI->getOperand(0));
						Value* LI_type = (LI->getPointerOperand());
						errs() << "\"" << *LI_type << "\"" << " -> " << "\"" <<  *LI << "\"" << ";\n";
					}
					else if(isa<GetElementPtrInst>(*I))
					{
						GetElementPtrInst* GEP = cast<GetElementPtrInst>(I);
						errs() << "\"" << *(GEP->getPointerOperand()) << "\"" << " -> " << "\"" <<  *GEP << "\"" << ";\n";
					}
					else if(isa<BinaryOperator>(I))
					{
						errs() << "\"" << *(I->getOperand(0)) << "\"" << " -> " << "\"" <<  *I << "\"" << ";\n";
						errs() << "\"" << *(I->getOperand(1)) << "\"" << " -> " << "\"" <<  *I << "\"" << ";\n";
					}
					else if(isa<CastInst>(I))
					{
						errs() << "\"" << *(I->getOperand(0)) << "\"" << " -> " << "\"" <<  *I << "\"" << ";\n";
					}
					else if(isa<ExtractValueInst>(I))
					{
						errs() << "\"" << *(I->getOperand(0)) << "\"" << " -> " << "\"" <<  *I << "\"" << ";\n";
					}
					else if(isa<ReturnInst>(I))
					{
						ReturnInst* RI = cast<ReturnInst>(I);
						errs() << "\"" << *(RI->getReturnValue()) << "\"" << " -> " << "\"" <<  *RI << "\"" << ";\n";
					}
				}
			}
			errs() << "\n}\n";
		    return false;
		}

	};
}


char ProgramDependanceGraph::ID = 0;
static RegisterPass<ProgramDependanceGraph> X("ProgramDependanceGraph", "ProgramDependanceGraph Pass");