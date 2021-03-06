// Generated by llvm2cpp - DO NOT MODIFY!

#include <llvm/Pass.h>
#include <llvm/PassManager.h>
#include <llvm/ADT/SmallVector.h>
#include <llvm/Analysis/Verifier.h>
#include <llvm/Assembly/PrintModulePass.h>
#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/CallingConv.h>
#include <llvm/IR/Constants.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/GlobalVariable.h>
#include <llvm/IR/InlineAsm.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/Support/FormattedStream.h>
#include <llvm/Support/MathExtras.h>
#include <algorithm>
using namespace llvm;

Module* makeLLVMModule();

int main(int argc, char**argv) {
  Module* Mod = makeLLVMModule();
  verifyModule(*Mod, PrintMessageAction);
  PassManager PM;
  PM.add(createPrintModulePass(&outs()));
  PM.run(*Mod);
  return 0;
}


Module* makeLLVMModule() {
 // Module Construction
 Module* mod = new Module("gcd.bc", getGlobalContext());
 mod->setDataLayout("e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128");
 mod->setTargetTriple("x86_64-unknown-linux-gnu");
 
 // Type Definitions
 ArrayType* ArrayTy_0 = ArrayType::get(IntegerType::get(mod->getContext(), 8), 4);
 
 PointerType* PointerTy_1 = PointerType::get(ArrayTy_0, 0);
 
 std::vector<Type*>FuncTy_2_args;
 FuncTy_2_args.push_back(IntegerType::get(mod->getContext(), 32));
 FuncTy_2_args.push_back(IntegerType::get(mod->getContext(), 32));
 FunctionType* FuncTy_2 = FunctionType::get(
  /*Result=*/IntegerType::get(mod->getContext(), 32),
  /*Params=*/FuncTy_2_args,
  /*isVarArg=*/false);
 
 PointerType* PointerTy_3 = PointerType::get(IntegerType::get(mod->getContext(), 32), 0);
 
 PointerType* PointerTy_4 = PointerType::get(FuncTy_2, 0);
 
 std::vector<Type*>FuncTy_5_args;
 FunctionType* FuncTy_5 = FunctionType::get(
  /*Result=*/IntegerType::get(mod->getContext(), 32),
  /*Params=*/FuncTy_5_args,
  /*isVarArg=*/false);
 
 PointerType* PointerTy_6 = PointerType::get(IntegerType::get(mod->getContext(), 8), 0);
 
 std::vector<Type*>FuncTy_8_args;
 FuncTy_8_args.push_back(PointerTy_6);
 FunctionType* FuncTy_8 = FunctionType::get(
  /*Result=*/IntegerType::get(mod->getContext(), 32),
  /*Params=*/FuncTy_8_args,
  /*isVarArg=*/true);
 
 PointerType* PointerTy_7 = PointerType::get(FuncTy_8, 0);
 
 
 // Function Declarations
 
 Function* func__Z3gcdjj = mod->getFunction("_Z3gcdjj");
 if (!func__Z3gcdjj) {
 func__Z3gcdjj = Function::Create(
  /*Type=*/FuncTy_2,
  /*Linkage=*/GlobalValue::ExternalLinkage,
  /*Name=*/"_Z3gcdjj", mod); 
 func__Z3gcdjj->setCallingConv(CallingConv::C);
 }
 AttributeSet func__Z3gcdjj_PAL;
 {
  SmallVector<AttributeSet, 4> Attrs;
  AttributeSet PAS;
   {
    AttrBuilder B;
    B.addAttribute(Attribute::UWTable);
    PAS = AttributeSet::get(mod->getContext(), ~0U, B);
   }
  
  Attrs.push_back(PAS);
  func__Z3gcdjj_PAL = AttributeSet::get(mod->getContext(), Attrs);
  
 }
 func__Z3gcdjj->setAttributes(func__Z3gcdjj_PAL);
 
 Function* func_main = mod->getFunction("main");
 if (!func_main) {
 func_main = Function::Create(
  /*Type=*/FuncTy_5,
  /*Linkage=*/GlobalValue::ExternalLinkage,
  /*Name=*/"main", mod); 
 func_main->setCallingConv(CallingConv::C);
 }
 AttributeSet func_main_PAL;
 {
  SmallVector<AttributeSet, 4> Attrs;
  AttributeSet PAS;
   {
    AttrBuilder B;
    B.addAttribute(Attribute::UWTable);
    PAS = AttributeSet::get(mod->getContext(), ~0U, B);
   }
  
  Attrs.push_back(PAS);
  func_main_PAL = AttributeSet::get(mod->getContext(), Attrs);
  
 }
 func_main->setAttributes(func_main_PAL);
 
 Function* func_printf = mod->getFunction("printf");
 if (!func_printf) {
 func_printf = Function::Create(
  /*Type=*/FuncTy_8,
  /*Linkage=*/GlobalValue::ExternalLinkage,
  /*Name=*/"printf", mod); // (external, no body)
 func_printf->setCallingConv(CallingConv::C);
 }
 AttributeSet func_printf_PAL;
 {
  SmallVector<AttributeSet, 4> Attrs;
  AttributeSet PAS;
   {
    AttrBuilder B;
    PAS = AttributeSet::get(mod->getContext(), ~0U, B);
   }
  
  Attrs.push_back(PAS);
  func_printf_PAL = AttributeSet::get(mod->getContext(), Attrs);
  
 }
 func_printf->setAttributes(func_printf_PAL);
 
 // Global Variable Declarations

 
 GlobalVariable* gvar_array__str = new GlobalVariable(/*Module=*/*mod, 
 /*Type=*/ArrayTy_0,
 /*isConstant=*/true,
 /*Linkage=*/GlobalValue::PrivateLinkage,
 /*Initializer=*/0, // has initializer, specified below
 /*Name=*/".str");
 gvar_array__str->setAlignment(1);
 
 // Constant Definitions
 Constant *const_array_9 = ConstantDataArray::getString(mod->getContext(), "%d\x0A", true);
 ConstantInt* const_int32_10 = ConstantInt::get(mod->getContext(), APInt(32, StringRef("1"), 10));
 ConstantInt* const_int32_11 = ConstantInt::get(mod->getContext(), APInt(32, StringRef("0"), 10));
 ConstantInt* const_int32_12 = ConstantInt::get(mod->getContext(), APInt(32, StringRef("72"), 10));
 ConstantInt* const_int32_13 = ConstantInt::get(mod->getContext(), APInt(32, StringRef("32"), 10));
 std::vector<Constant*> const_ptr_14_indices;
 const_ptr_14_indices.push_back(const_int32_11);
 const_ptr_14_indices.push_back(const_int32_11);
 Constant* const_ptr_14 = ConstantExpr::getGetElementPtr(gvar_array__str, const_ptr_14_indices);
 
 // Global Variable Definitions
 gvar_array__str->setInitializer(const_array_9);
 
 // Function Definitions
 
 // Function: _Z3gcdjj (func__Z3gcdjj)
 {
  Function::arg_iterator args = func__Z3gcdjj->arg_begin();
  Value* int32_n1 = args++;
  int32_n1->setName("n1");
  Value* int32_n2 = args++;
  int32_n2->setName("n2");
  
  BasicBlock* label_entry = BasicBlock::Create(mod->getContext(), "entry",func__Z3gcdjj,0);
  BasicBlock* label_cond_true = BasicBlock::Create(mod->getContext(), "cond.true",func__Z3gcdjj,0);
  BasicBlock* label_cond_false = BasicBlock::Create(mod->getContext(), "cond.false",func__Z3gcdjj,0);
  BasicBlock* label_cond_end = BasicBlock::Create(mod->getContext(), "cond.end",func__Z3gcdjj,0);
  
  // Block entry (label_entry)
  AllocaInst* ptr_n1_addr = new AllocaInst(IntegerType::get(mod->getContext(), 32), "n1.addr", label_entry);
  ptr_n1_addr->setAlignment(4);
  AllocaInst* ptr_n2_addr = new AllocaInst(IntegerType::get(mod->getContext(), 32), "n2.addr", label_entry);
  ptr_n2_addr->setAlignment(4);
  StoreInst* void_15 = new StoreInst(int32_n1, ptr_n1_addr, false, label_entry);
  void_15->setAlignment(4);
  StoreInst* void_16 = new StoreInst(int32_n2, ptr_n2_addr, false, label_entry);
  void_16->setAlignment(4);
  LoadInst* int32_17 = new LoadInst(ptr_n2_addr, "", false, label_entry);
  int32_17->setAlignment(4);
  ICmpInst* int1_cmp = new ICmpInst(*label_entry, ICmpInst::ICMP_EQ, int32_17, const_int32_11, "cmp");
  BranchInst::Create(label_cond_true, label_cond_false, int1_cmp, label_entry);
  
  // Block cond.true (label_cond_true)
  LoadInst* int32_19 = new LoadInst(ptr_n1_addr, "", false, label_cond_true);
  int32_19->setAlignment(4);
  BranchInst::Create(label_cond_end, label_cond_true);
  
  // Block cond.false (label_cond_false)
  LoadInst* int32_21 = new LoadInst(ptr_n2_addr, "", false, label_cond_false);
  int32_21->setAlignment(4);
  LoadInst* int32_22 = new LoadInst(ptr_n1_addr, "", false, label_cond_false);
  int32_22->setAlignment(4);
  LoadInst* int32_23 = new LoadInst(ptr_n2_addr, "", false, label_cond_false);
  int32_23->setAlignment(4);
  BinaryOperator* int32_rem = BinaryOperator::Create(Instruction::URem, int32_22, int32_23, "rem", label_cond_false);
  std::vector<Value*> int32_call_params;
  int32_call_params.push_back(int32_21);
  int32_call_params.push_back(int32_rem);
  CallInst* int32_call = CallInst::Create(func__Z3gcdjj, int32_call_params, "call", label_cond_false);
  int32_call->setCallingConv(CallingConv::C);
  int32_call->setTailCall(false);
  AttributeSet int32_call_PAL;
  int32_call->setAttributes(int32_call_PAL);
  
  BranchInst::Create(label_cond_end, label_cond_false);
  
  // Block cond.end (label_cond_end)
  PHINode* int32_cond = PHINode::Create(IntegerType::get(mod->getContext(), 32), 2, "cond", label_cond_end);
  int32_cond->addIncoming(int32_19, label_cond_true);
  int32_cond->addIncoming(int32_call, label_cond_false);
  
  ReturnInst::Create(mod->getContext(), int32_cond, label_cond_end);
  
 }
 
 // Function: main (func_main)
 {
  
  BasicBlock* label_entry_26 = BasicBlock::Create(mod->getContext(), "entry",func_main,0);
  
  // Block entry (label_entry_26)
  AllocaInst* ptr_retval = new AllocaInst(IntegerType::get(mod->getContext(), 32), "retval", label_entry_26);
  ptr_retval->setAlignment(4);
  StoreInst* void_27 = new StoreInst(const_int32_11, ptr_retval, false, label_entry_26);
  std::vector<Value*> int32_call_28_params;
  int32_call_28_params.push_back(const_int32_12);
  int32_call_28_params.push_back(const_int32_13);
  CallInst* int32_call_28 = CallInst::Create(func__Z3gcdjj, int32_call_28_params, "call", label_entry_26);
  int32_call_28->setCallingConv(CallingConv::C);
  int32_call_28->setTailCall(false);
  AttributeSet int32_call_28_PAL;
  int32_call_28->setAttributes(int32_call_28_PAL);
  
  std::vector<Value*> int32_call1_params;
  int32_call1_params.push_back(const_ptr_14);
  int32_call1_params.push_back(int32_call_28);
  CallInst* int32_call1 = CallInst::Create(func_printf, int32_call1_params, "call1", label_entry_26);
  int32_call1->setCallingConv(CallingConv::C);
  int32_call1->setTailCall(false);
  AttributeSet int32_call1_PAL;
  int32_call1->setAttributes(int32_call1_PAL);
  
  ReturnInst::Create(mod->getContext(), const_int32_11, label_entry_26);
  
 }
 
 return mod;
}
