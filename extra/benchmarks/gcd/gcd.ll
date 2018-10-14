; ModuleID = 'gcd.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.llvm::Module" = type { %"class.llvm::LLVMContext"*, %"class.llvm::iplist", %"class.llvm::iplist.0", %"class.llvm::iplist.9", %"struct.llvm::ilist", %"class.std::__cxx11::basic_string", %"class.llvm::ValueSymbolTable"*, %"class.llvm::OwningPtr", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8* }
%"class.llvm::LLVMContext" = type { %"class.llvm::LLVMContextImpl"* }
%"class.llvm::LLVMContextImpl" = type opaque
%"class.llvm::iplist" = type { %"struct.llvm::ilist_traits", %"class.llvm::GlobalVariable"* }
%"struct.llvm::ilist_traits" = type { %"class.llvm::ilist_node" }
%"class.llvm::ilist_node" = type { %"class.llvm::ilist_half_node", %"class.llvm::GlobalVariable"* }
%"class.llvm::ilist_half_node" = type { %"class.llvm::GlobalVariable"* }
%"class.llvm::GlobalVariable" = type { %"class.llvm::GlobalValue", %"class.llvm::ilist_node", i8 }
%"class.llvm::GlobalValue" = type { [52 x i8], [4 x i8], %"class.llvm::Module"*, %"class.std::__cxx11::basic_string" }
%"class.llvm::iplist.0" = type { %"struct.llvm::ilist_traits.1", %"class.llvm::Function"* }
%"struct.llvm::ilist_traits.1" = type { %"class.llvm::ilist_node.7" }
%"class.llvm::ilist_node.7" = type { %"class.llvm::ilist_half_node.8", %"class.llvm::Function"* }
%"class.llvm::ilist_half_node.8" = type { %"class.llvm::Function"* }
%"class.llvm::Function" = type { %"class.llvm::GlobalValue", %"class.llvm::ilist_node.7", %"class.llvm::iplist.26", %"class.llvm::iplist.34", %"class.llvm::ValueSymbolTable"*, %"class.llvm::AttributeSet" }
%"class.llvm::iplist.26" = type { %"struct.llvm::ilist_traits.27", %"class.llvm::BasicBlock"* }
%"struct.llvm::ilist_traits.27" = type { %"class.llvm::ilist_half_node.33" }
%"class.llvm::ilist_half_node.33" = type { %"class.llvm::BasicBlock"* }
%"class.llvm::BasicBlock" = type { %"class.llvm::Value", %"class.llvm::ilist_node.43", %"class.llvm::iplist.44", %"class.llvm::Function"* }
%"class.llvm::Value" = type { i32 (...)**, i8, i8, i16, %"class.llvm::Type"*, %"class.llvm::Use"*, %"class.llvm::StringMapEntry"* }
%"class.llvm::Type" = type { %"class.llvm::LLVMContext"*, i32, i32, %"class.llvm::Type"** }
%"class.llvm::Use" = type { %"class.llvm::Value"*, %"class.llvm::Use"*, %"class.llvm::PointerIntPair" }
%"class.llvm::PointerIntPair" = type { i64 }
%"class.llvm::StringMapEntry" = type opaque
%"class.llvm::ilist_node.43" = type { %"class.llvm::ilist_half_node.33", %"class.llvm::BasicBlock"* }
%"class.llvm::iplist.44" = type { %"struct.llvm::ilist_traits.45", %"class.llvm::Instruction"* }
%"struct.llvm::ilist_traits.45" = type { %"class.llvm::ilist_half_node.51" }
%"class.llvm::ilist_half_node.51" = type { %"class.llvm::Instruction"* }
%"class.llvm::Instruction" = type { %"class.llvm::User", %"class.llvm::ilist_node.52", %"class.llvm::BasicBlock"*, %"class.llvm::DebugLoc" }
%"class.llvm::User" = type { %"class.llvm::Value", %"class.llvm::Use"*, i32 }
%"class.llvm::ilist_node.52" = type { %"class.llvm::ilist_half_node.51", %"class.llvm::Instruction"* }
%"class.llvm::DebugLoc" = type { i32, i32 }
%"class.llvm::iplist.34" = type { %"struct.llvm::ilist_traits.35", %"class.llvm::Argument"* }
%"struct.llvm::ilist_traits.35" = type { %"class.llvm::ilist_half_node.41" }
%"class.llvm::ilist_half_node.41" = type { %"class.llvm::Argument"* }
%"class.llvm::Argument" = type { %"class.llvm::Value", %"class.llvm::ilist_node.42", %"class.llvm::Function"* }
%"class.llvm::ilist_node.42" = type { %"class.llvm::ilist_half_node.41", %"class.llvm::Argument"* }
%"class.llvm::AttributeSet" = type { %"class.llvm::AttributeSetImpl"* }
%"class.llvm::AttributeSetImpl" = type opaque
%"class.llvm::iplist.9" = type { %"struct.llvm::ilist_traits.10", %"class.llvm::GlobalAlias"* }
%"struct.llvm::ilist_traits.10" = type { %"class.llvm::ilist_node.16" }
%"class.llvm::ilist_node.16" = type { %"class.llvm::ilist_half_node.17", %"class.llvm::GlobalAlias"* }
%"class.llvm::ilist_half_node.17" = type { %"class.llvm::GlobalAlias"* }
%"class.llvm::GlobalAlias" = type { %"class.llvm::GlobalValue", %"class.llvm::ilist_node.16" }
%"struct.llvm::ilist" = type { %"class.llvm::iplist.18" }
%"class.llvm::iplist.18" = type { %"struct.llvm::ilist_traits.19", %"class.llvm::NamedMDNode"* }
%"struct.llvm::ilist_traits.19" = type { %"class.llvm::ilist_node.24" }
%"class.llvm::ilist_node.24" = type { %"class.llvm::ilist_half_node.25", %"class.llvm::NamedMDNode"* }
%"class.llvm::ilist_half_node.25" = type { %"class.llvm::NamedMDNode"* }
%"class.llvm::NamedMDNode" = type { %"class.llvm::ilist_node.24", %"class.std::__cxx11::basic_string", %"class.llvm::Module"*, i8* }
%"class.llvm::ValueSymbolTable" = type opaque
%"class.llvm::OwningPtr" = type { %"class.llvm::GVMaterializer"* }
%"class.llvm::GVMaterializer" = type opaque
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.llvm::legacy::PassManager" = type { %"class.llvm::legacy::PassManagerBase", %"class.llvm::legacy::PassManagerImpl"* }
%"class.llvm::legacy::PassManagerBase" = type { i32 (...)** }
%"class.llvm::legacy::PassManagerImpl" = type opaque
%"class.std::allocator" = type { i8 }
%"class.llvm::raw_ostream" = type { i32 (...)**, i8*, i8*, i8*, i32 }
%"class.llvm::ModulePass" = type { %"class.llvm::Pass" }
%"class.llvm::Pass" = type { i32 (...)**, %"class.llvm::AnalysisResolver"*, i8*, i32 }
%"class.llvm::AnalysisResolver" = type { %"class.std::vector", %"class.llvm::PMDataManager"* }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::pair<const void *, llvm::Pass *>, std::allocator<std::pair<const void *, llvm::Pass *> > >::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<const void *, llvm::Pass *>, std::allocator<std::pair<const void *, llvm::Pass *> > >::_Vector_impl" = type { %"struct.std::pair"*, %"struct.std::pair"*, %"struct.std::pair"* }
%"struct.std::pair" = type { i8*, %"class.llvm::Pass"* }
%"class.llvm::PMDataManager" = type opaque
%"class.llvm::StringRef" = type { i8*, i64 }
%"class.llvm::ArrayType" = type { %"class.llvm::SequentialType", i64 }
%"class.llvm::SequentialType" = type { %"class.llvm::CompositeType", %"class.llvm::Type"* }
%"class.llvm::CompositeType" = type { %"class.llvm::Type" }
%"class.llvm::PointerType" = type { %"class.llvm::SequentialType" }
%"class.std::vector.56" = type { %"struct.std::_Vector_base.57" }
%"struct.std::_Vector_base.57" = type { %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl" }
%"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl" = type { %"class.llvm::Type"**, %"class.llvm::Type"**, %"class.llvm::Type"** }
%"class.llvm::FunctionType" = type { %"class.llvm::Type" }
%"class.llvm::ArrayRef" = type { %"class.llvm::Type"**, i64 }
%"class.llvm::Twine" = type { %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8 }
%"union.llvm::Twine::Child" = type { %"class.llvm::Twine"* }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase", %"struct.llvm::AlignedCharArrayUnion" }
%"class.llvm::SmallVectorBase" = type { i8*, i8*, i8* }
%"struct.llvm::AlignedCharArrayUnion" = type { %"struct.llvm::AlignedCharArray" }
%"struct.llvm::AlignedCharArray" = type { [8 x i8] }
%"struct.llvm::SmallVectorStorage" = type { [3 x %"struct.llvm::AlignedCharArrayUnion"] }
%"class.llvm::AttrBuilder" = type { %"class.std::bitset", %"class.std::map", i64, i64 }
%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { i64 }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl" = type { %"struct.std::less", %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"class.llvm::ArrayRef.64" = type { %"class.llvm::AttributeSet"*, i64 }
%"class.llvm::Constant" = type { %"class.llvm::User" }
%"class.llvm::ConstantInt" = type { %"class.llvm::Constant", %"class.llvm::APInt" }
%"class.llvm::APInt" = type { i32, %union.anon.65 }
%union.anon.65 = type { i64 }
%"class.std::vector.66" = type { %"struct.std::_Vector_base.67" }
%"struct.std::_Vector_base.67" = type { %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl" }
%"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl" = type { %"class.llvm::Constant"**, %"class.llvm::Constant"**, %"class.llvm::Constant"** }
%"class.llvm::ArrayRef.71" = type { %"class.llvm::Constant"**, i64 }
%"class.llvm::ilist_iterator" = type { %"class.llvm::Argument"* }
%"class.llvm::AllocaInst" = type { %"class.llvm::UnaryInstruction" }
%"class.llvm::UnaryInstruction" = type { %"class.llvm::Instruction" }
%"class.llvm::StoreInst" = type { %"class.llvm::Instruction" }
%"class.llvm::LoadInst" = type { %"class.llvm::UnaryInstruction" }
%"class.llvm::ICmpInst" = type { %"class.llvm::CmpInst" }
%"class.llvm::CmpInst" = type { %"class.llvm::Instruction" }
%"class.llvm::BinaryOperator" = type { %"class.llvm::Instruction" }
%"class.std::vector.72" = type { %"struct.std::_Vector_base.73" }
%"struct.std::_Vector_base.73" = type { %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl" }
%"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl" = type { %"class.llvm::Value"**, %"class.llvm::Value"**, %"class.llvm::Value"** }
%"class.llvm::CallInst" = type { %"class.llvm::Instruction", %"class.llvm::AttributeSet" }
%"class.llvm::ArrayRef.77" = type { %"class.llvm::Value"**, i64 }
%"class.llvm::PHINode" = type { %"class.llvm::Instruction", i32 }
%"class.llvm::IntegerType" = type { %"class.llvm::Type" }
%"class.llvm::BranchInst" = type { %"class.llvm::TerminatorInst" }
%"class.llvm::TerminatorInst" = type { %"class.llvm::Instruction" }
%"class.llvm::ReturnInst" = type { %"class.llvm::TerminatorInst" }
%"class.__gnu_cxx::__normal_iterator.82" = type { %"class.llvm::Type"** }
%"class.std::allocator.58" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.80" = type { %"class.llvm::Constant"** }
%"class.std::allocator.68" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.78" = type { %"class.llvm::Value"** }
%"class.std::allocator.74" = type { i8 }
%"class.__gnu_cxx::__normal_iterator" = type { %"class.llvm::Value"** }
%"class.__gnu_cxx::new_allocator.75" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.79" = type { %"class.llvm::Constant"** }
%"class.__gnu_cxx::new_allocator.69" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.81" = type { %"class.llvm::Type"** }
%"class.__gnu_cxx::new_allocator.59" = type { i8 }
%"class.llvm::PointerIntPair.83" = type { i64 }
%"class.llvm::VectorType" = type { %"class.llvm::SequentialType", i32 }
%"struct.std::iterator" = type { i8 }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.std::pair.84" }
%"struct.std::pair.84" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::allocator.61" = type { i8 }
%"class.__gnu_cxx::new_allocator.62" = type { i8 }
%"class.std::allocator.85" = type { i8 }
%"class.__gnu_cxx::new_allocator.86" = type { i8 }

@_ZN4llvmL9huge_valfE = internal constant float 0x7FF0000000000000, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str1 = private unnamed_addr constant [7 x i8] c"gcd.bc\00", align 1
@.str2 = private unnamed_addr constant [146 x i8] c"e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128\00", align 1
@.str3 = private unnamed_addr constant [25 x i8] c"x86_64-unknown-linux-gnu\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"_Z3gcdjj\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c".str\00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str9 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str11 = private unnamed_addr constant [3 x i8] c"72\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"n1\00", align 1
@.str14 = private unnamed_addr constant [3 x i8] c"n2\00", align 1
@.str15 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str16 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@.str17 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@.str18 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@.str19 = private unnamed_addr constant [8 x i8] c"n1.addr\00", align 1
@.str20 = private unnamed_addr constant [8 x i8] c"n2.addr\00", align 1
@.str21 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@.str22 = private unnamed_addr constant [4 x i8] c"rem\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str24 = private unnamed_addr constant [5 x i8] c"cond\00", align 1
@.str25 = private unnamed_addr constant [7 x i8] c"retval\00", align 1
@.str26 = private unnamed_addr constant [6 x i8] c"call1\00", align 1
@.str27 = private unnamed_addr constant [22 x i8] c"vector::_M_insert_aux\00", align 1
@.str28 = private unnamed_addr constant [20 x i8] c"Constructor throws?\00", align 1
@.str29 = private unnamed_addr constant [67 x i8] c"/home/abreeza/Desktop/cse231-proj1/llvm/src/include/llvm/IR/User.h\00", align 1
@.str30 = private unnamed_addr constant [34 x i8] c"V && \22PHI node got a null value!\22\00", align 1
@.str31 = private unnamed_addr constant [75 x i8] c"/home/abreeza/Desktop/cse231-proj1/llvm/src/include/llvm/IR/Instructions.h\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE = private unnamed_addr constant [67 x i8] c"void llvm::PHINode::addIncoming(llvm::Value *, llvm::BasicBlock *)\00", align 1
@.str32 = private unnamed_addr constant [41 x i8] c"BB && \22PHI node got a null basic block!\22\00", align 1
@.str33 = private unnamed_addr constant [95 x i8] c"getType() == V->getType() && \22All operands to PHI node must be the same type as the PHI node!\22\00", align 1
@.str34 = private unnamed_addr constant [85 x i8] c"i_nocapture < OperandTraits<PHINode>::operands(this) && \22setOperand() out of range!\22\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm7PHINode10setOperandEjPNS_5ValueE = private unnamed_addr constant [60 x i8] c"void llvm::PHINode::setOperand(unsigned int, llvm::Value *)\00", align 1
@.str35 = private unnamed_addr constant [100 x i8] c"(PtrWord & ((1 << PtrTraits::NumLowBitsAvailable)-1)) == 0 && \22Pointer is not sufficiently aligned\22\00", align 1
@.str36 = private unnamed_addr constant [78 x i8] c"/home/abreeza/Desktop/cse231-proj1/llvm/src/include/llvm/ADT/PointerIntPair.h\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm14PointerIntPairIPPNS_3UseELj2ENS1_10PrevPtrTagENS_21PointerLikeTypeTraitsIS3_EEE10setPointerES3_ = private unnamed_addr constant [261 x i8] c"void llvm::PointerIntPair<llvm::Use **, 2, llvm::Use::PrevPtrTag, llvm::PointerLikeTypeTraits<llvm::Use **> >::setPointer(PointerTy) [PointerTy = llvm::Use **, IntBits = 2, IntType = llvm::Use::PrevPtrTag, PtrTraits = llvm::PointerLikeTypeTraits<llvm::Use **>]\00", align 1
@_ZTVN4llvm7PHINodeE = external unnamed_addr constant [7 x i8*]
@.str37 = private unnamed_addr constant [65 x i8] c"(D & HasMetadataBit) == 0 && \22Out of range value put into field\22\00", align 1
@.str38 = private unnamed_addr constant [74 x i8] c"/home/abreeza/Desktop/cse231-proj1/llvm/src/include/llvm/IR/Instruction.h\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm11Instruction26setInstructionSubclassDataEt = private unnamed_addr constant [67 x i8] c"void llvm::Instruction::setInstructionSubclassData(unsigned short)\00", align 1
@_ZTVN4llvm8CallInstE = external unnamed_addr constant [7 x i8*]
@.str39 = private unnamed_addr constant [59 x i8] c"isa<X>(Val) && \22cast<Ty>() argument of incompatible type!\22\00", align 1
@.str40 = private unnamed_addr constant [75 x i8] c"/home/abreeza/Desktop/cse231-proj1/llvm/src/include/llvm/Support/Casting.h\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm4castINS_11PointerTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = private unnamed_addr constant [94 x i8] c"typename cast_retty<X, Y *>::ret_type llvm::cast(Y *) [X = llvm::PointerType, Y = llvm::Type]\00", align 1
@.str41 = private unnamed_addr constant [38 x i8] c"Val && \22isa<> used on a null pointer\22\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_11PointerTypeEPKNS_4TypeEE4doitES4_ = private unnamed_addr constant [141 x i8] c"static bool llvm::isa_impl_cl<llvm::PointerType, const llvm::Type *>::doit(const From *) [To = llvm::PointerType, From = const llvm::Type *]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm4castINS_12FunctionTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = private unnamed_addr constant [95 x i8] c"typename cast_retty<X, Y *>::ret_type llvm::cast(Y *) [X = llvm::FunctionType, Y = llvm::Type]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_12FunctionTypeEPKNS_4TypeEE4doitES4_ = private unnamed_addr constant [143 x i8] c"static bool llvm::isa_impl_cl<llvm::FunctionType, const llvm::Type *>::doit(const From *) [To = llvm::FunctionType, From = const llvm::Type *]\00", align 1
@_ZTVN4llvm8ICmpInstE = external unnamed_addr constant [7 x i8*]
@.str42 = private unnamed_addr constant [132 x i8] c"getPredicate() >= CmpInst::FIRST_ICMP_PREDICATE && getPredicate() <= CmpInst::LAST_ICMP_PREDICATE && \22Invalid ICmp predicate value\22\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm8ICmpInst8AssertOKEv = private unnamed_addr constant [32 x i8] c"void llvm::ICmpInst::AssertOK()\00", align 1
@.str43 = private unnamed_addr constant [118 x i8] c"getOperand(0)->getType() == getOperand(1)->getType() && \22Both operands to ICmp instruction are not of the same type!\22\00", align 1
@.str44 = private unnamed_addr constant [147 x i8] c"(getOperand(0)->getType()->isIntOrIntVectorTy() || getOperand(0)->getType()->isPtrOrPtrVectorTy()) && \22Invalid operand types for ICmp instruction\22\00", align 1
@.str45 = private unnamed_addr constant [85 x i8] c"i_nocapture < OperandTraits<CmpInst>::operands(this) && \22getOperand() out of range!\22\00", align 1
@.str46 = private unnamed_addr constant [73 x i8] c"/home/abreeza/Desktop/cse231-proj1/llvm/src/include/llvm/IR/InstrTypes.h\00", align 1
@__PRETTY_FUNCTION__._ZNK4llvm7CmpInst10getOperandEj = private unnamed_addr constant [59 x i8] c"llvm::Value *llvm::CmpInst::getOperand(unsigned int) const\00", align 1
@.str47 = private unnamed_addr constant [67 x i8] c"isa<X>(Val) && \22cast_or_null<Ty>() argument of incompatible type!\22\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm12cast_or_nullINS_5ValueES1_EENS_10cast_rettyIT_PT0_E8ret_typeES5_ = private unnamed_addr constant [97 x i8] c"typename cast_retty<X, Y *>::ret_type llvm::cast_or_null(Y *) [X = llvm::Value, Y = llvm::Value]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm4castINS_5ValueES1_EENS_10cast_rettyIT_PT0_E8ret_typeES5_ = private unnamed_addr constant [89 x i8] c"typename cast_retty<X, Y *>::ret_type llvm::cast(Y *) [X = llvm::Value, Y = llvm::Value]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_5ValueEPKS1_E4doitES3_ = private unnamed_addr constant [131 x i8] c"static bool llvm::isa_impl_cl<llvm::Value, const llvm::Value *>::doit(const From *) [To = llvm::Value, From = const llvm::Value *]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm4castINS_10VectorTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = private unnamed_addr constant [93 x i8] c"typename cast_retty<X, Y *>::ret_type llvm::cast(Y *) [X = llvm::VectorType, Y = llvm::Type]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_10VectorTypeEPKNS_4TypeEE4doitES4_ = private unnamed_addr constant [139 x i8] c"static bool llvm::isa_impl_cl<llvm::VectorType, const llvm::Type *>::doit(const From *) [To = llvm::VectorType, From = const llvm::Type *]\00", align 1
@.str48 = private unnamed_addr constant [30 x i8] c"isValid() && \22Invalid twine!\22\00", align 1
@.str49 = private unnamed_addr constant [69 x i8] c"/home/abreeza/Desktop/cse231-proj1/llvm/src/include/llvm/ADT/Twine.h\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm5TwineC2EPKc = private unnamed_addr constant [33 x i8] c"llvm::Twine::Twine(const char *)\00", align 1
@.str50 = private unnamed_addr constant [56 x i8] c"Str && \22StringRef cannot be built from a NULL argument\22\00", align 1
@.str51 = private unnamed_addr constant [73 x i8] c"/home/abreeza/Desktop/cse231-proj1/llvm/src/include/llvm/ADT/StringRef.h\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm9StringRefC2EPKc = private unnamed_addr constant [41 x i8] c"llvm::StringRef::StringRef(const char *)\00", align 1

; Function Attrs: uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %Mod = alloca %"class.llvm::Module"*, align 8
  %PM = alloca %"class.llvm::legacy::PassManager", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp3 = alloca %"class.std::allocator", align 1
  %cleanup.dest.slot = alloca i32
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call %"class.llvm::Module"* @_Z14makeLLVMModulev()
  store %"class.llvm::Module"* %call, %"class.llvm::Module"** %Mod, align 8
  %0 = load %"class.llvm::Module"** %Mod, align 8
  %call1 = call zeroext i1 @_ZN4llvm12verifyModuleERKNS_6ModuleENS_21VerifierFailureActionEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.llvm::Module"* %0, i32 1, %"class.std::__cxx11::basic_string"* null)
  call void @_ZN4llvm6legacy11PassManagerC1Ev(%"class.llvm::legacy::PassManager"* %PM)
  %call2 = invoke %"class.llvm::raw_ostream"* @_ZN4llvm4outsEv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp3) #7
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %ref.tmp, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), %"class.std::allocator"* %ref.tmp3)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont
  %call8 = invoke %"class.llvm::ModulePass"* @_ZN4llvm21createPrintModulePassEPNS_11raw_ostreamEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.llvm::raw_ostream"* %call2, i1 zeroext false, %"class.std::__cxx11::basic_string"* %ref.tmp)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %invoke.cont5
  %1 = bitcast %"class.llvm::ModulePass"* %call8 to %"class.llvm::Pass"*
  invoke void @_ZN4llvm6legacy11PassManager3addEPNS_4PassE(%"class.llvm::legacy::PassManager"* %PM, %"class.llvm::Pass"* %1)
          to label %invoke.cont9 unwind label %lpad6

invoke.cont9:                                     ; preds = %invoke.cont7
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp)
          to label %invoke.cont10 unwind label %lpad4

invoke.cont10:                                    ; preds = %invoke.cont9
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp3) #7
  %2 = load %"class.llvm::Module"** %Mod, align 8
  %call13 = invoke zeroext i1 @_ZN4llvm6legacy11PassManager3runERNS_6ModuleE(%"class.llvm::legacy::PassManager"* %PM, %"class.llvm::Module"* %2)
          to label %invoke.cont12 unwind label %lpad

invoke.cont12:                                    ; preds = %invoke.cont10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  call void @_ZN4llvm6legacy11PassManagerD1Ev(%"class.llvm::legacy::PassManager"* %PM)
  %3 = load i32* %retval
  ret i32 %3

lpad:                                             ; preds = %invoke.cont10, %entry
  %4 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot
  br label %ehcleanup14

lpad4:                                            ; preds = %invoke.cont9, %invoke.cont
  %7 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %exn.slot
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %ehselector.slot
  br label %ehcleanup

lpad6:                                            ; preds = %invoke.cont7, %invoke.cont5
  %10 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %exn.slot
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %ehselector.slot
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp)
          to label %invoke.cont11 unwind label %terminate.lpad

invoke.cont11:                                    ; preds = %lpad6
  br label %ehcleanup

ehcleanup:                                        ; preds = %invoke.cont11, %lpad4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp3) #7
  br label %ehcleanup14

ehcleanup14:                                      ; preds = %ehcleanup, %lpad
  invoke void @_ZN4llvm6legacy11PassManagerD1Ev(%"class.llvm::legacy::PassManager"* %PM)
          to label %invoke.cont15 unwind label %terminate.lpad

invoke.cont15:                                    ; preds = %ehcleanup14
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont15
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val16 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val16

terminate.lpad:                                   ; preds = %ehcleanup14, %lpad6
  %13 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  call void @__clang_call_terminate(i8* %14) #13
  unreachable
}

; Function Attrs: uwtable
define %"class.llvm::Module"* @_Z14makeLLVMModulev() #0 {
entry:
  %mod = alloca %"class.llvm::Module"*, align 8
  %agg.tmp = alloca %"class.llvm::StringRef", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp4 = alloca %"class.llvm::StringRef", align 8
  %agg.tmp5 = alloca %"class.llvm::StringRef", align 8
  %ArrayTy_0 = alloca %"class.llvm::ArrayType"*, align 8
  %PointerTy_1 = alloca %"class.llvm::PointerType"*, align 8
  %FuncTy_2_args = alloca %"class.std::vector.56", align 8
  %ref.tmp = alloca %"class.llvm::Type"*, align 8
  %ref.tmp16 = alloca %"class.llvm::Type"*, align 8
  %FuncTy_2 = alloca %"class.llvm::FunctionType"*, align 8
  %agg.tmp26 = alloca %"class.llvm::ArrayRef", align 8
  %PointerTy_3 = alloca %"class.llvm::PointerType"*, align 8
  %PointerTy_4 = alloca %"class.llvm::PointerType"*, align 8
  %FuncTy_5_args = alloca %"class.std::vector.56", align 8
  %FuncTy_5 = alloca %"class.llvm::FunctionType"*, align 8
  %agg.tmp44 = alloca %"class.llvm::ArrayRef", align 8
  %PointerTy_6 = alloca %"class.llvm::PointerType"*, align 8
  %FuncTy_8_args = alloca %"class.std::vector.56", align 8
  %ref.tmp55 = alloca %"class.llvm::Type"*, align 8
  %FuncTy_8 = alloca %"class.llvm::FunctionType"*, align 8
  %agg.tmp62 = alloca %"class.llvm::ArrayRef", align 8
  %PointerTy_7 = alloca %"class.llvm::PointerType"*, align 8
  %func__Z3gcdjj = alloca %"class.llvm::Function"*, align 8
  %agg.tmp68 = alloca %"class.llvm::StringRef", align 8
  %ref.tmp72 = alloca %"class.llvm::Twine", align 8
  %func__Z3gcdjj_PAL = alloca %"class.llvm::AttributeSet", align 8
  %Attrs = alloca %"class.llvm::SmallVector", align 8
  %PAS = alloca %"class.llvm::AttributeSet", align 8
  %B = alloca %"class.llvm::AttrBuilder", align 8
  %ref.tmp85 = alloca %"class.llvm::AttributeSet", align 8
  %ref.tmp93 = alloca %"class.llvm::AttributeSet", align 8
  %agg.tmp96 = alloca %"class.llvm::ArrayRef.64", align 8
  %agg.tmp103 = alloca %"class.llvm::AttributeSet", align 8
  %func_main = alloca %"class.llvm::Function"*, align 8
  %agg.tmp106 = alloca %"class.llvm::StringRef", align 8
  %ref.tmp112 = alloca %"class.llvm::Twine", align 8
  %func_main_PAL = alloca %"class.llvm::AttributeSet", align 8
  %Attrs119 = alloca %"class.llvm::SmallVector", align 8
  %PAS121 = alloca %"class.llvm::AttributeSet", align 8
  %B124 = alloca %"class.llvm::AttrBuilder", align 8
  %ref.tmp129 = alloca %"class.llvm::AttributeSet", align 8
  %ref.tmp139 = alloca %"class.llvm::AttributeSet", align 8
  %agg.tmp142 = alloca %"class.llvm::ArrayRef.64", align 8
  %agg.tmp150 = alloca %"class.llvm::AttributeSet", align 8
  %func_printf = alloca %"class.llvm::Function"*, align 8
  %agg.tmp153 = alloca %"class.llvm::StringRef", align 8
  %ref.tmp159 = alloca %"class.llvm::Twine", align 8
  %func_printf_PAL = alloca %"class.llvm::AttributeSet", align 8
  %Attrs166 = alloca %"class.llvm::SmallVector", align 8
  %PAS168 = alloca %"class.llvm::AttributeSet", align 8
  %B171 = alloca %"class.llvm::AttrBuilder", align 8
  %ref.tmp173 = alloca %"class.llvm::AttributeSet", align 8
  %ref.tmp184 = alloca %"class.llvm::AttributeSet", align 8
  %agg.tmp187 = alloca %"class.llvm::ArrayRef.64", align 8
  %agg.tmp195 = alloca %"class.llvm::AttributeSet", align 8
  %gvar_array__str = alloca %"class.llvm::GlobalVariable"*, align 8
  %ref.tmp200 = alloca %"class.llvm::Twine", align 8
  %const_array_9 = alloca %"class.llvm::Constant"*, align 8
  %agg.tmp209 = alloca %"class.llvm::StringRef", align 8
  %const_int32_10 = alloca %"class.llvm::ConstantInt"*, align 8
  %ref.tmp215 = alloca %"class.llvm::APInt", align 8
  %agg.tmp216 = alloca %"class.llvm::StringRef", align 8
  %const_int32_11 = alloca %"class.llvm::ConstantInt"*, align 8
  %ref.tmp227 = alloca %"class.llvm::APInt", align 8
  %agg.tmp228 = alloca %"class.llvm::StringRef", align 8
  %const_int32_12 = alloca %"class.llvm::ConstantInt"*, align 8
  %ref.tmp239 = alloca %"class.llvm::APInt", align 8
  %agg.tmp240 = alloca %"class.llvm::StringRef", align 8
  %const_int32_13 = alloca %"class.llvm::ConstantInt"*, align 8
  %ref.tmp251 = alloca %"class.llvm::APInt", align 8
  %agg.tmp252 = alloca %"class.llvm::StringRef", align 8
  %const_ptr_14_indices = alloca %"class.std::vector.66", align 8
  %ref.tmp262 = alloca %"class.llvm::Constant"*, align 8
  %ref.tmp265 = alloca %"class.llvm::Constant"*, align 8
  %const_ptr_14 = alloca %"class.llvm::Constant"*, align 8
  %agg.tmp267 = alloca %"class.llvm::ArrayRef.71", align 8
  %args = alloca %"class.llvm::ilist_iterator", align 8
  %int32_n1 = alloca %"class.llvm::Value"*, align 8
  %coerce = alloca %"class.llvm::ilist_iterator", align 8
  %ref.tmp280 = alloca %"class.llvm::Twine", align 8
  %int32_n2 = alloca %"class.llvm::Value"*, align 8
  %coerce285 = alloca %"class.llvm::ilist_iterator", align 8
  %ref.tmp289 = alloca %"class.llvm::Twine", align 8
  %label_entry = alloca %"class.llvm::BasicBlock"*, align 8
  %ref.tmp294 = alloca %"class.llvm::Twine", align 8
  %label_cond_true = alloca %"class.llvm::BasicBlock"*, align 8
  %ref.tmp300 = alloca %"class.llvm::Twine", align 8
  %label_cond_false = alloca %"class.llvm::BasicBlock"*, align 8
  %ref.tmp306 = alloca %"class.llvm::Twine", align 8
  %label_cond_end = alloca %"class.llvm::BasicBlock"*, align 8
  %ref.tmp312 = alloca %"class.llvm::Twine", align 8
  %ptr_n1_addr = alloca %"class.llvm::AllocaInst"*, align 8
  %ref.tmp323 = alloca %"class.llvm::Twine", align 8
  %ptr_n2_addr = alloca %"class.llvm::AllocaInst"*, align 8
  %ref.tmp336 = alloca %"class.llvm::Twine", align 8
  %void_15 = alloca %"class.llvm::StoreInst"*, align 8
  %void_16 = alloca %"class.llvm::StoreInst"*, align 8
  %int32_17 = alloca %"class.llvm::LoadInst"*, align 8
  %int1_cmp = alloca %"class.llvm::ICmpInst"*, align 8
  %ref.tmp365 = alloca %"class.llvm::Twine", align 8
  %int32_19 = alloca %"class.llvm::LoadInst"*, align 8
  %int32_21 = alloca %"class.llvm::LoadInst"*, align 8
  %int32_22 = alloca %"class.llvm::LoadInst"*, align 8
  %int32_23 = alloca %"class.llvm::LoadInst"*, align 8
  %int32_rem = alloca %"class.llvm::BinaryOperator"*, align 8
  %ref.tmp403 = alloca %"class.llvm::Twine", align 8
  %int32_call_params = alloca %"class.std::vector.72", align 8
  %ref.tmp408 = alloca %"class.llvm::Value"*, align 8
  %ref.tmp411 = alloca %"class.llvm::Value"*, align 8
  %int32_call = alloca %"class.llvm::CallInst"*, align 8
  %agg.tmp413 = alloca %"class.llvm::ArrayRef.77", align 8
  %ref.tmp415 = alloca %"class.llvm::Twine", align 8
  %int32_call_PAL = alloca %"class.llvm::AttributeSet", align 8
  %int32_cond = alloca %"class.llvm::PHINode"*, align 8
  %ref.tmp429 = alloca %"class.llvm::Twine", align 8
  %label_entry_26 = alloca %"class.llvm::BasicBlock"*, align 8
  %ref.tmp444 = alloca %"class.llvm::Twine", align 8
  %ptr_retval = alloca %"class.llvm::AllocaInst"*, align 8
  %ref.tmp455 = alloca %"class.llvm::Twine", align 8
  %void_27 = alloca %"class.llvm::StoreInst"*, align 8
  %int32_call_28_params = alloca %"class.std::vector.72", align 8
  %ref.tmp468 = alloca %"class.llvm::Value"*, align 8
  %ref.tmp471 = alloca %"class.llvm::Value"*, align 8
  %int32_call_28 = alloca %"class.llvm::CallInst"*, align 8
  %agg.tmp473 = alloca %"class.llvm::ArrayRef.77", align 8
  %ref.tmp475 = alloca %"class.llvm::Twine", align 8
  %int32_call_28_PAL = alloca %"class.llvm::AttributeSet", align 8
  %int32_call1_params = alloca %"class.std::vector.72", align 8
  %ref.tmp484 = alloca %"class.llvm::Value"*, align 8
  %ref.tmp487 = alloca %"class.llvm::Value"*, align 8
  %int32_call1 = alloca %"class.llvm::CallInst"*, align 8
  %agg.tmp489 = alloca %"class.llvm::ArrayRef.77", align 8
  %ref.tmp491 = alloca %"class.llvm::Twine", align 8
  %int32_call1_PAL = alloca %"class.llvm::AttributeSet", align 8
  %cleanup.dest.slot = alloca i32
  %call = call noalias i8* @_Znwm(i64 256) #14
  %0 = bitcast i8* %call to %"class.llvm::Module"*
  invoke void @_ZN4llvm9StringRefC2EPKc(%"class.llvm::StringRef"* %agg.tmp, i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0))
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call2 = invoke %"class.llvm::LLVMContext"* @_ZN4llvm16getGlobalContextEv()
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %invoke.cont
  %1 = bitcast %"class.llvm::StringRef"* %agg.tmp to { i8*, i64 }*
  %2 = getelementptr { i8*, i64 }* %1, i32 0, i32 0
  %3 = load i8** %2, align 1
  %4 = getelementptr { i8*, i64 }* %1, i32 0, i32 1
  %5 = load i64* %4, align 1
  invoke void @_ZN4llvm6ModuleC1ENS_9StringRefERNS_11LLVMContextE(%"class.llvm::Module"* %0, i8* %3, i64 %5, %"class.llvm::LLVMContext"* %call2)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont1
  store %"class.llvm::Module"* %0, %"class.llvm::Module"** %mod, align 8
  %6 = load %"class.llvm::Module"** %mod, align 8
  call void @_ZN4llvm9StringRefC2EPKc(%"class.llvm::StringRef"* %agg.tmp4, i8* getelementptr inbounds ([146 x i8]* @.str2, i32 0, i32 0))
  %7 = bitcast %"class.llvm::StringRef"* %agg.tmp4 to { i8*, i64 }*
  %8 = getelementptr { i8*, i64 }* %7, i32 0, i32 0
  %9 = load i8** %8, align 1
  %10 = getelementptr { i8*, i64 }* %7, i32 0, i32 1
  %11 = load i64* %10, align 1
  call void @_ZN4llvm6Module13setDataLayoutENS_9StringRefE(%"class.llvm::Module"* %6, i8* %9, i64 %11)
  %12 = load %"class.llvm::Module"** %mod, align 8
  call void @_ZN4llvm9StringRefC2EPKc(%"class.llvm::StringRef"* %agg.tmp5, i8* getelementptr inbounds ([25 x i8]* @.str3, i32 0, i32 0))
  %13 = bitcast %"class.llvm::StringRef"* %agg.tmp5 to { i8*, i64 }*
  %14 = getelementptr { i8*, i64 }* %13, i32 0, i32 0
  %15 = load i8** %14, align 1
  %16 = getelementptr { i8*, i64 }* %13, i32 0, i32 1
  %17 = load i64* %16, align 1
  call void @_ZN4llvm6Module15setTargetTripleENS_9StringRefE(%"class.llvm::Module"* %12, i8* %15, i64 %17)
  %18 = load %"class.llvm::Module"** %mod, align 8
  %call6 = call %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %18)
  %call7 = call %"class.llvm::IntegerType"* @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(%"class.llvm::LLVMContext"* %call6, i32 8)
  %19 = bitcast %"class.llvm::IntegerType"* %call7 to %"class.llvm::Type"*
  %call8 = call %"class.llvm::ArrayType"* @_ZN4llvm9ArrayType3getEPNS_4TypeEm(%"class.llvm::Type"* %19, i64 4)
  store %"class.llvm::ArrayType"* %call8, %"class.llvm::ArrayType"** %ArrayTy_0, align 8
  %20 = load %"class.llvm::ArrayType"** %ArrayTy_0, align 8
  %21 = bitcast %"class.llvm::ArrayType"* %20 to %"class.llvm::Type"*
  %call9 = call %"class.llvm::PointerType"* @_ZN4llvm11PointerType3getEPNS_4TypeEj(%"class.llvm::Type"* %21, i32 0)
  store %"class.llvm::PointerType"* %call9, %"class.llvm::PointerType"** %PointerTy_1, align 8
  call void @_ZNSt6vectorIPN4llvm4TypeESaIS2_EEC2Ev(%"class.std::vector.56"* %FuncTy_2_args)
  %22 = load %"class.llvm::Module"** %mod, align 8
  %call12 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %22)
          to label %invoke.cont11 unwind label %lpad10

invoke.cont11:                                    ; preds = %invoke.cont3
  %call14 = invoke %"class.llvm::IntegerType"* @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(%"class.llvm::LLVMContext"* %call12, i32 32)
          to label %invoke.cont13 unwind label %lpad10

invoke.cont13:                                    ; preds = %invoke.cont11
  %23 = bitcast %"class.llvm::IntegerType"* %call14 to %"class.llvm::Type"*
  store %"class.llvm::Type"* %23, %"class.llvm::Type"** %ref.tmp
  invoke void @_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backERKS2_(%"class.std::vector.56"* %FuncTy_2_args, %"class.llvm::Type"** %ref.tmp)
          to label %invoke.cont15 unwind label %lpad10

invoke.cont15:                                    ; preds = %invoke.cont13
  %24 = load %"class.llvm::Module"** %mod, align 8
  %call18 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %24)
          to label %invoke.cont17 unwind label %lpad10

invoke.cont17:                                    ; preds = %invoke.cont15
  %call20 = invoke %"class.llvm::IntegerType"* @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(%"class.llvm::LLVMContext"* %call18, i32 32)
          to label %invoke.cont19 unwind label %lpad10

invoke.cont19:                                    ; preds = %invoke.cont17
  %25 = bitcast %"class.llvm::IntegerType"* %call20 to %"class.llvm::Type"*
  store %"class.llvm::Type"* %25, %"class.llvm::Type"** %ref.tmp16
  invoke void @_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backERKS2_(%"class.std::vector.56"* %FuncTy_2_args, %"class.llvm::Type"** %ref.tmp16)
          to label %invoke.cont21 unwind label %lpad10

invoke.cont21:                                    ; preds = %invoke.cont19
  %26 = load %"class.llvm::Module"** %mod, align 8
  %call23 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %26)
          to label %invoke.cont22 unwind label %lpad10

invoke.cont22:                                    ; preds = %invoke.cont21
  %call25 = invoke %"class.llvm::IntegerType"* @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(%"class.llvm::LLVMContext"* %call23, i32 32)
          to label %invoke.cont24 unwind label %lpad10

invoke.cont24:                                    ; preds = %invoke.cont22
  %27 = bitcast %"class.llvm::IntegerType"* %call25 to %"class.llvm::Type"*
  invoke void @_ZN4llvm8ArrayRefIPNS_4TypeEEC2ISaIS2_EEERKSt6vectorIS2_T_E(%"class.llvm::ArrayRef"* %agg.tmp26, %"class.std::vector.56"* %FuncTy_2_args)
          to label %invoke.cont27 unwind label %lpad10

invoke.cont27:                                    ; preds = %invoke.cont24
  %28 = bitcast %"class.llvm::ArrayRef"* %agg.tmp26 to { %"class.llvm::Type"**, i64 }*
  %29 = getelementptr { %"class.llvm::Type"**, i64 }* %28, i32 0, i32 0
  %30 = load %"class.llvm::Type"*** %29, align 1
  %31 = getelementptr { %"class.llvm::Type"**, i64 }* %28, i32 0, i32 1
  %32 = load i64* %31, align 1
  %call29 = invoke %"class.llvm::FunctionType"* @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(%"class.llvm::Type"* %27, %"class.llvm::Type"** %30, i64 %32, i1 zeroext false)
          to label %invoke.cont28 unwind label %lpad10

invoke.cont28:                                    ; preds = %invoke.cont27
  store %"class.llvm::FunctionType"* %call29, %"class.llvm::FunctionType"** %FuncTy_2, align 8
  %33 = load %"class.llvm::Module"** %mod, align 8
  %call31 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %33)
          to label %invoke.cont30 unwind label %lpad10

invoke.cont30:                                    ; preds = %invoke.cont28
  %call33 = invoke %"class.llvm::IntegerType"* @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(%"class.llvm::LLVMContext"* %call31, i32 32)
          to label %invoke.cont32 unwind label %lpad10

invoke.cont32:                                    ; preds = %invoke.cont30
  %34 = bitcast %"class.llvm::IntegerType"* %call33 to %"class.llvm::Type"*
  %call35 = invoke %"class.llvm::PointerType"* @_ZN4llvm11PointerType3getEPNS_4TypeEj(%"class.llvm::Type"* %34, i32 0)
          to label %invoke.cont34 unwind label %lpad10

invoke.cont34:                                    ; preds = %invoke.cont32
  store %"class.llvm::PointerType"* %call35, %"class.llvm::PointerType"** %PointerTy_3, align 8
  %35 = load %"class.llvm::FunctionType"** %FuncTy_2, align 8
  %36 = bitcast %"class.llvm::FunctionType"* %35 to %"class.llvm::Type"*
  %call37 = invoke %"class.llvm::PointerType"* @_ZN4llvm11PointerType3getEPNS_4TypeEj(%"class.llvm::Type"* %36, i32 0)
          to label %invoke.cont36 unwind label %lpad10

invoke.cont36:                                    ; preds = %invoke.cont34
  store %"class.llvm::PointerType"* %call37, %"class.llvm::PointerType"** %PointerTy_4, align 8
  invoke void @_ZNSt6vectorIPN4llvm4TypeESaIS2_EEC2Ev(%"class.std::vector.56"* %FuncTy_5_args)
          to label %invoke.cont38 unwind label %lpad10

invoke.cont38:                                    ; preds = %invoke.cont36
  %37 = load %"class.llvm::Module"** %mod, align 8
  %call41 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %37)
          to label %invoke.cont40 unwind label %lpad39

invoke.cont40:                                    ; preds = %invoke.cont38
  %call43 = invoke %"class.llvm::IntegerType"* @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(%"class.llvm::LLVMContext"* %call41, i32 32)
          to label %invoke.cont42 unwind label %lpad39

invoke.cont42:                                    ; preds = %invoke.cont40
  %38 = bitcast %"class.llvm::IntegerType"* %call43 to %"class.llvm::Type"*
  invoke void @_ZN4llvm8ArrayRefIPNS_4TypeEEC2ISaIS2_EEERKSt6vectorIS2_T_E(%"class.llvm::ArrayRef"* %agg.tmp44, %"class.std::vector.56"* %FuncTy_5_args)
          to label %invoke.cont45 unwind label %lpad39

invoke.cont45:                                    ; preds = %invoke.cont42
  %39 = bitcast %"class.llvm::ArrayRef"* %agg.tmp44 to { %"class.llvm::Type"**, i64 }*
  %40 = getelementptr { %"class.llvm::Type"**, i64 }* %39, i32 0, i32 0
  %41 = load %"class.llvm::Type"*** %40, align 1
  %42 = getelementptr { %"class.llvm::Type"**, i64 }* %39, i32 0, i32 1
  %43 = load i64* %42, align 1
  %call47 = invoke %"class.llvm::FunctionType"* @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(%"class.llvm::Type"* %38, %"class.llvm::Type"** %41, i64 %43, i1 zeroext false)
          to label %invoke.cont46 unwind label %lpad39

invoke.cont46:                                    ; preds = %invoke.cont45
  store %"class.llvm::FunctionType"* %call47, %"class.llvm::FunctionType"** %FuncTy_5, align 8
  %44 = load %"class.llvm::Module"** %mod, align 8
  %call49 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %44)
          to label %invoke.cont48 unwind label %lpad39

invoke.cont48:                                    ; preds = %invoke.cont46
  %call51 = invoke %"class.llvm::IntegerType"* @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(%"class.llvm::LLVMContext"* %call49, i32 8)
          to label %invoke.cont50 unwind label %lpad39

invoke.cont50:                                    ; preds = %invoke.cont48
  %45 = bitcast %"class.llvm::IntegerType"* %call51 to %"class.llvm::Type"*
  %call53 = invoke %"class.llvm::PointerType"* @_ZN4llvm11PointerType3getEPNS_4TypeEj(%"class.llvm::Type"* %45, i32 0)
          to label %invoke.cont52 unwind label %lpad39

invoke.cont52:                                    ; preds = %invoke.cont50
  store %"class.llvm::PointerType"* %call53, %"class.llvm::PointerType"** %PointerTy_6, align 8
  invoke void @_ZNSt6vectorIPN4llvm4TypeESaIS2_EEC2Ev(%"class.std::vector.56"* %FuncTy_8_args)
          to label %invoke.cont54 unwind label %lpad39

invoke.cont54:                                    ; preds = %invoke.cont52
  %46 = load %"class.llvm::PointerType"** %PointerTy_6, align 8
  %47 = bitcast %"class.llvm::PointerType"* %46 to %"class.llvm::Type"*
  store %"class.llvm::Type"* %47, %"class.llvm::Type"** %ref.tmp55
  invoke void @_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backERKS2_(%"class.std::vector.56"* %FuncTy_8_args, %"class.llvm::Type"** %ref.tmp55)
          to label %invoke.cont57 unwind label %lpad56

invoke.cont57:                                    ; preds = %invoke.cont54
  %48 = load %"class.llvm::Module"** %mod, align 8
  %call59 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %48)
          to label %invoke.cont58 unwind label %lpad56

invoke.cont58:                                    ; preds = %invoke.cont57
  %call61 = invoke %"class.llvm::IntegerType"* @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(%"class.llvm::LLVMContext"* %call59, i32 32)
          to label %invoke.cont60 unwind label %lpad56

invoke.cont60:                                    ; preds = %invoke.cont58
  %49 = bitcast %"class.llvm::IntegerType"* %call61 to %"class.llvm::Type"*
  invoke void @_ZN4llvm8ArrayRefIPNS_4TypeEEC2ISaIS2_EEERKSt6vectorIS2_T_E(%"class.llvm::ArrayRef"* %agg.tmp62, %"class.std::vector.56"* %FuncTy_8_args)
          to label %invoke.cont63 unwind label %lpad56

invoke.cont63:                                    ; preds = %invoke.cont60
  %50 = bitcast %"class.llvm::ArrayRef"* %agg.tmp62 to { %"class.llvm::Type"**, i64 }*
  %51 = getelementptr { %"class.llvm::Type"**, i64 }* %50, i32 0, i32 0
  %52 = load %"class.llvm::Type"*** %51, align 1
  %53 = getelementptr { %"class.llvm::Type"**, i64 }* %50, i32 0, i32 1
  %54 = load i64* %53, align 1
  %call65 = invoke %"class.llvm::FunctionType"* @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(%"class.llvm::Type"* %49, %"class.llvm::Type"** %52, i64 %54, i1 zeroext true)
          to label %invoke.cont64 unwind label %lpad56

invoke.cont64:                                    ; preds = %invoke.cont63
  store %"class.llvm::FunctionType"* %call65, %"class.llvm::FunctionType"** %FuncTy_8, align 8
  %55 = load %"class.llvm::FunctionType"** %FuncTy_8, align 8
  %56 = bitcast %"class.llvm::FunctionType"* %55 to %"class.llvm::Type"*
  %call67 = invoke %"class.llvm::PointerType"* @_ZN4llvm11PointerType3getEPNS_4TypeEj(%"class.llvm::Type"* %56, i32 0)
          to label %invoke.cont66 unwind label %lpad56

invoke.cont66:                                    ; preds = %invoke.cont64
  store %"class.llvm::PointerType"* %call67, %"class.llvm::PointerType"** %PointerTy_7, align 8
  %57 = load %"class.llvm::Module"** %mod, align 8
  invoke void @_ZN4llvm9StringRefC2EPKc(%"class.llvm::StringRef"* %agg.tmp68, i8* getelementptr inbounds ([9 x i8]* @.str4, i32 0, i32 0))
          to label %invoke.cont69 unwind label %lpad56

invoke.cont69:                                    ; preds = %invoke.cont66
  %58 = bitcast %"class.llvm::StringRef"* %agg.tmp68 to { i8*, i64 }*
  %59 = getelementptr { i8*, i64 }* %58, i32 0, i32 0
  %60 = load i8** %59, align 1
  %61 = getelementptr { i8*, i64 }* %58, i32 0, i32 1
  %62 = load i64* %61, align 1
  %call71 = invoke %"class.llvm::Function"* @_ZNK4llvm6Module11getFunctionENS_9StringRefE(%"class.llvm::Module"* %57, i8* %60, i64 %62)
          to label %invoke.cont70 unwind label %lpad56

invoke.cont70:                                    ; preds = %invoke.cont69
  store %"class.llvm::Function"* %call71, %"class.llvm::Function"** %func__Z3gcdjj, align 8
  %63 = load %"class.llvm::Function"** %func__Z3gcdjj, align 8
  %tobool = icmp ne %"class.llvm::Function"* %63, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %invoke.cont70
  %64 = load %"class.llvm::FunctionType"** %FuncTy_2, align 8
  invoke void @_ZN4llvm5TwineC2EPKc(%"class.llvm::Twine"* %ref.tmp72, i8* getelementptr inbounds ([9 x i8]* @.str4, i32 0, i32 0))
          to label %invoke.cont73 unwind label %lpad56

invoke.cont73:                                    ; preds = %if.then
  %65 = load %"class.llvm::Module"** %mod, align 8
  %call75 = invoke %"class.llvm::Function"* @_ZN4llvm8Function6CreateEPNS_12FunctionTypeENS_11GlobalValue12LinkageTypesERKNS_5TwineEPNS_6ModuleE(%"class.llvm::FunctionType"* %64, i32 0, %"class.llvm::Twine"* %ref.tmp72, %"class.llvm::Module"* %65)
          to label %invoke.cont74 unwind label %lpad56

invoke.cont74:                                    ; preds = %invoke.cont73
  store %"class.llvm::Function"* %call75, %"class.llvm::Function"** %func__Z3gcdjj, align 8
  %66 = load %"class.llvm::Function"** %func__Z3gcdjj, align 8
  invoke void @_ZN4llvm8Function14setCallingConvENS_11CallingConv2IDE(%"class.llvm::Function"* %66, i32 0)
          to label %invoke.cont76 unwind label %lpad56

invoke.cont76:                                    ; preds = %invoke.cont74
  br label %if.end

lpad:                                             ; preds = %invoke.cont1, %invoke.cont, %entry
  %67 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %68 = extractvalue { i8*, i32 } %67, 0
  store i8* %68, i8** %exn.slot
  %69 = extractvalue { i8*, i32 } %67, 1
  store i32 %69, i32* %ehselector.slot
  call void @_ZdlPv(i8* %call) #15
  br label %eh.resume

lpad10:                                           ; preds = %invoke.cont512, %invoke.cont36, %invoke.cont34, %invoke.cont32, %invoke.cont30, %invoke.cont28, %invoke.cont27, %invoke.cont24, %invoke.cont22, %invoke.cont21, %invoke.cont19, %invoke.cont17, %invoke.cont15, %invoke.cont13, %invoke.cont11, %invoke.cont3
  %70 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %71 = extractvalue { i8*, i32 } %70, 0
  store i8* %71, i8** %exn.slot
  %72 = extractvalue { i8*, i32 } %70, 1
  store i32 %72, i32* %ehselector.slot
  br label %ehcleanup518

lpad39:                                           ; preds = %invoke.cont509, %invoke.cont52, %invoke.cont50, %invoke.cont48, %invoke.cont46, %invoke.cont45, %invoke.cont42, %invoke.cont40, %invoke.cont38
  %73 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %74 = extractvalue { i8*, i32 } %73, 0
  store i8* %74, i8** %exn.slot
  %75 = extractvalue { i8*, i32 } %73, 1
  store i32 %75, i32* %ehselector.slot
  br label %ehcleanup516

lpad56:                                           ; preds = %invoke.cont506, %invoke.cont258, %invoke.cont256, %invoke.cont253, %invoke.cont249, %invoke.cont246, %invoke.cont244, %invoke.cont241, %invoke.cont237, %invoke.cont234, %invoke.cont232, %invoke.cont229, %invoke.cont225, %invoke.cont222, %invoke.cont220, %invoke.cont217, %invoke.cont213, %invoke.cont211, %invoke.cont210, %invoke.cont207, %invoke.cont206, %invoke.cont203, %invoke.cont197, %invoke.cont192, %invoke.cont189, %invoke.cont165, %if.end164, %invoke.cont161, %invoke.cont160, %if.then158, %invoke.cont154, %invoke.cont152, %invoke.cont147, %invoke.cont144, %invoke.cont118, %if.end117, %invoke.cont114, %invoke.cont113, %if.then111, %invoke.cont107, %invoke.cont105, %invoke.cont101, %invoke.cont98, %invoke.cont77, %if.end, %invoke.cont74, %invoke.cont73, %if.then, %invoke.cont69, %invoke.cont66, %invoke.cont64, %invoke.cont63, %invoke.cont60, %invoke.cont58, %invoke.cont57, %invoke.cont54
  %76 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %77 = extractvalue { i8*, i32 } %76, 0
  store i8* %77, i8** %exn.slot
  %78 = extractvalue { i8*, i32 } %76, 1
  store i32 %78, i32* %ehselector.slot
  br label %ehcleanup513

if.end:                                           ; preds = %invoke.cont76, %invoke.cont70
  invoke void @_ZN4llvm12AttributeSetC2Ev(%"class.llvm::AttributeSet"* %func__Z3gcdjj_PAL)
          to label %invoke.cont77 unwind label %lpad56

invoke.cont77:                                    ; preds = %if.end
  invoke void @_ZN4llvm11SmallVectorINS_12AttributeSetELj4EEC2Ev(%"class.llvm::SmallVector"* %Attrs)
          to label %invoke.cont78 unwind label %lpad56

invoke.cont78:                                    ; preds = %invoke.cont77
  invoke void @_ZN4llvm12AttributeSetC2Ev(%"class.llvm::AttributeSet"* %PAS)
          to label %invoke.cont80 unwind label %lpad79

invoke.cont80:                                    ; preds = %invoke.cont78
  invoke void @_ZN4llvm11AttrBuilderC2Ev(%"class.llvm::AttrBuilder"* %B)
          to label %invoke.cont81 unwind label %lpad79

invoke.cont81:                                    ; preds = %invoke.cont80
  %call84 = invoke %"class.llvm::AttrBuilder"* @_ZN4llvm11AttrBuilder12addAttributeENS_9Attribute8AttrKindE(%"class.llvm::AttrBuilder"* %B, i32 36)
          to label %invoke.cont83 unwind label %lpad82

invoke.cont83:                                    ; preds = %invoke.cont81
  %79 = load %"class.llvm::Module"** %mod, align 8
  %call87 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %79)
          to label %invoke.cont86 unwind label %lpad82

invoke.cont86:                                    ; preds = %invoke.cont83
  %call89 = invoke %"class.llvm::AttributeSetImpl"* @_ZN4llvm12AttributeSet3getERNS_11LLVMContextEjRNS_11AttrBuilderE(%"class.llvm::LLVMContext"* %call87, i32 -1, %"class.llvm::AttrBuilder"* %B)
          to label %invoke.cont88 unwind label %lpad82

invoke.cont88:                                    ; preds = %invoke.cont86
  %coerce.dive = getelementptr %"class.llvm::AttributeSet"* %ref.tmp85, i32 0, i32 0
  store %"class.llvm::AttributeSetImpl"* %call89, %"class.llvm::AttributeSetImpl"** %coerce.dive
  %80 = bitcast %"class.llvm::AttributeSet"* %PAS to i8*
  %81 = bitcast %"class.llvm::AttributeSet"* %ref.tmp85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 8, i32 8, i1 false)
  invoke void @_ZN4llvm11AttrBuilderD2Ev(%"class.llvm::AttrBuilder"* %B)
          to label %invoke.cont90 unwind label %lpad79

invoke.cont90:                                    ; preds = %invoke.cont88
  %82 = bitcast %"class.llvm::SmallVector"* %Attrs to %"class.llvm::SmallVectorTemplateBase"*
  invoke void @_ZN4llvm23SmallVectorTemplateBaseINS_12AttributeSetELb1EE9push_backERKS1_(%"class.llvm::SmallVectorTemplateBase"* %82, %"class.llvm::AttributeSet"* %PAS)
          to label %invoke.cont92 unwind label %lpad79

invoke.cont92:                                    ; preds = %invoke.cont90
  %83 = load %"class.llvm::Module"** %mod, align 8
  %call95 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %83)
          to label %invoke.cont94 unwind label %lpad79

invoke.cont94:                                    ; preds = %invoke.cont92
  %84 = bitcast %"class.llvm::SmallVector"* %Attrs to %"class.llvm::SmallVectorTemplateCommon"*
  invoke void @_ZN4llvm8ArrayRefINS_12AttributeSetEEC2IvEERKNS_25SmallVectorTemplateCommonIS1_T_EE(%"class.llvm::ArrayRef.64"* %agg.tmp96, %"class.llvm::SmallVectorTemplateCommon"* %84)
          to label %invoke.cont97 unwind label %lpad79

invoke.cont97:                                    ; preds = %invoke.cont94
  %85 = bitcast %"class.llvm::ArrayRef.64"* %agg.tmp96 to { %"class.llvm::AttributeSet"*, i64 }*
  %86 = getelementptr { %"class.llvm::AttributeSet"*, i64 }* %85, i32 0, i32 0
  %87 = load %"class.llvm::AttributeSet"** %86, align 1
  %88 = getelementptr { %"class.llvm::AttributeSet"*, i64 }* %85, i32 0, i32 1
  %89 = load i64* %88, align 1
  %call99 = invoke %"class.llvm::AttributeSetImpl"* @_ZN4llvm12AttributeSet3getERNS_11LLVMContextENS_8ArrayRefIS0_EE(%"class.llvm::LLVMContext"* %call95, %"class.llvm::AttributeSet"* %87, i64 %89)
          to label %invoke.cont98 unwind label %lpad79

invoke.cont98:                                    ; preds = %invoke.cont97
  %coerce.dive100 = getelementptr %"class.llvm::AttributeSet"* %ref.tmp93, i32 0, i32 0
  store %"class.llvm::AttributeSetImpl"* %call99, %"class.llvm::AttributeSetImpl"** %coerce.dive100
  %90 = bitcast %"class.llvm::AttributeSet"* %func__Z3gcdjj_PAL to i8*
  %91 = bitcast %"class.llvm::AttributeSet"* %ref.tmp93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 8, i32 8, i1 false)
  invoke void @_ZN4llvm11SmallVectorINS_12AttributeSetELj4EED2Ev(%"class.llvm::SmallVector"* %Attrs)
          to label %invoke.cont101 unwind label %lpad56

invoke.cont101:                                   ; preds = %invoke.cont98
  %92 = load %"class.llvm::Function"** %func__Z3gcdjj, align 8
  %93 = bitcast %"class.llvm::AttributeSet"* %agg.tmp103 to i8*
  %94 = bitcast %"class.llvm::AttributeSet"* %func__Z3gcdjj_PAL to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* %94, i64 8, i32 8, i1 false)
  %coerce.dive104 = getelementptr %"class.llvm::AttributeSet"* %agg.tmp103, i32 0, i32 0
  %95 = load %"class.llvm::AttributeSetImpl"** %coerce.dive104
  invoke void @_ZN4llvm8Function13setAttributesENS_12AttributeSetE(%"class.llvm::Function"* %92, %"class.llvm::AttributeSetImpl"* %95)
          to label %invoke.cont105 unwind label %lpad56

invoke.cont105:                                   ; preds = %invoke.cont101
  %96 = load %"class.llvm::Module"** %mod, align 8
  invoke void @_ZN4llvm9StringRefC2EPKc(%"class.llvm::StringRef"* %agg.tmp106, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0))
          to label %invoke.cont107 unwind label %lpad56

invoke.cont107:                                   ; preds = %invoke.cont105
  %97 = bitcast %"class.llvm::StringRef"* %agg.tmp106 to { i8*, i64 }*
  %98 = getelementptr { i8*, i64 }* %97, i32 0, i32 0
  %99 = load i8** %98, align 1
  %100 = getelementptr { i8*, i64 }* %97, i32 0, i32 1
  %101 = load i64* %100, align 1
  %call109 = invoke %"class.llvm::Function"* @_ZNK4llvm6Module11getFunctionENS_9StringRefE(%"class.llvm::Module"* %96, i8* %99, i64 %101)
          to label %invoke.cont108 unwind label %lpad56

invoke.cont108:                                   ; preds = %invoke.cont107
  store %"class.llvm::Function"* %call109, %"class.llvm::Function"** %func_main, align 8
  %102 = load %"class.llvm::Function"** %func_main, align 8
  %tobool110 = icmp ne %"class.llvm::Function"* %102, null
  br i1 %tobool110, label %if.end117, label %if.then111

if.then111:                                       ; preds = %invoke.cont108
  %103 = load %"class.llvm::FunctionType"** %FuncTy_5, align 8
  invoke void @_ZN4llvm5TwineC2EPKc(%"class.llvm::Twine"* %ref.tmp112, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0))
          to label %invoke.cont113 unwind label %lpad56

invoke.cont113:                                   ; preds = %if.then111
  %104 = load %"class.llvm::Module"** %mod, align 8
  %call115 = invoke %"class.llvm::Function"* @_ZN4llvm8Function6CreateEPNS_12FunctionTypeENS_11GlobalValue12LinkageTypesERKNS_5TwineEPNS_6ModuleE(%"class.llvm::FunctionType"* %103, i32 0, %"class.llvm::Twine"* %ref.tmp112, %"class.llvm::Module"* %104)
          to label %invoke.cont114 unwind label %lpad56

invoke.cont114:                                   ; preds = %invoke.cont113
  store %"class.llvm::Function"* %call115, %"class.llvm::Function"** %func_main, align 8
  %105 = load %"class.llvm::Function"** %func_main, align 8
  invoke void @_ZN4llvm8Function14setCallingConvENS_11CallingConv2IDE(%"class.llvm::Function"* %105, i32 0)
          to label %invoke.cont116 unwind label %lpad56

invoke.cont116:                                   ; preds = %invoke.cont114
  br label %if.end117

lpad79:                                           ; preds = %invoke.cont97, %invoke.cont94, %invoke.cont92, %invoke.cont90, %invoke.cont88, %invoke.cont80, %invoke.cont78
  %106 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %107 = extractvalue { i8*, i32 } %106, 0
  store i8* %107, i8** %exn.slot
  %108 = extractvalue { i8*, i32 } %106, 1
  store i32 %108, i32* %ehselector.slot
  br label %ehcleanup

lpad82:                                           ; preds = %invoke.cont86, %invoke.cont83, %invoke.cont81
  %109 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %110 = extractvalue { i8*, i32 } %109, 0
  store i8* %110, i8** %exn.slot
  %111 = extractvalue { i8*, i32 } %109, 1
  store i32 %111, i32* %ehselector.slot
  invoke void @_ZN4llvm11AttrBuilderD2Ev(%"class.llvm::AttrBuilder"* %B)
          to label %invoke.cont91 unwind label %terminate.lpad

invoke.cont91:                                    ; preds = %lpad82
  br label %ehcleanup

ehcleanup:                                        ; preds = %invoke.cont91, %lpad79
  invoke void @_ZN4llvm11SmallVectorINS_12AttributeSetELj4EED2Ev(%"class.llvm::SmallVector"* %Attrs)
          to label %invoke.cont102 unwind label %terminate.lpad

invoke.cont102:                                   ; preds = %ehcleanup
  br label %ehcleanup513

if.end117:                                        ; preds = %invoke.cont116, %invoke.cont108
  invoke void @_ZN4llvm12AttributeSetC2Ev(%"class.llvm::AttributeSet"* %func_main_PAL)
          to label %invoke.cont118 unwind label %lpad56

invoke.cont118:                                   ; preds = %if.end117
  invoke void @_ZN4llvm11SmallVectorINS_12AttributeSetELj4EEC2Ev(%"class.llvm::SmallVector"* %Attrs119)
          to label %invoke.cont120 unwind label %lpad56

invoke.cont120:                                   ; preds = %invoke.cont118
  invoke void @_ZN4llvm12AttributeSetC2Ev(%"class.llvm::AttributeSet"* %PAS121)
          to label %invoke.cont123 unwind label %lpad122

invoke.cont123:                                   ; preds = %invoke.cont120
  invoke void @_ZN4llvm11AttrBuilderC2Ev(%"class.llvm::AttrBuilder"* %B124)
          to label %invoke.cont125 unwind label %lpad122

invoke.cont125:                                   ; preds = %invoke.cont123
  %call128 = invoke %"class.llvm::AttrBuilder"* @_ZN4llvm11AttrBuilder12addAttributeENS_9Attribute8AttrKindE(%"class.llvm::AttrBuilder"* %B124, i32 36)
          to label %invoke.cont127 unwind label %lpad126

invoke.cont127:                                   ; preds = %invoke.cont125
  %112 = load %"class.llvm::Module"** %mod, align 8
  %call131 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %112)
          to label %invoke.cont130 unwind label %lpad126

invoke.cont130:                                   ; preds = %invoke.cont127
  %call133 = invoke %"class.llvm::AttributeSetImpl"* @_ZN4llvm12AttributeSet3getERNS_11LLVMContextEjRNS_11AttrBuilderE(%"class.llvm::LLVMContext"* %call131, i32 -1, %"class.llvm::AttrBuilder"* %B124)
          to label %invoke.cont132 unwind label %lpad126

invoke.cont132:                                   ; preds = %invoke.cont130
  %coerce.dive134 = getelementptr %"class.llvm::AttributeSet"* %ref.tmp129, i32 0, i32 0
  store %"class.llvm::AttributeSetImpl"* %call133, %"class.llvm::AttributeSetImpl"** %coerce.dive134
  %113 = bitcast %"class.llvm::AttributeSet"* %PAS121 to i8*
  %114 = bitcast %"class.llvm::AttributeSet"* %ref.tmp129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %113, i8* %114, i64 8, i32 8, i1 false)
  invoke void @_ZN4llvm11AttrBuilderD2Ev(%"class.llvm::AttrBuilder"* %B124)
          to label %invoke.cont135 unwind label %lpad122

invoke.cont135:                                   ; preds = %invoke.cont132
  %115 = bitcast %"class.llvm::SmallVector"* %Attrs119 to %"class.llvm::SmallVectorTemplateBase"*
  invoke void @_ZN4llvm23SmallVectorTemplateBaseINS_12AttributeSetELb1EE9push_backERKS1_(%"class.llvm::SmallVectorTemplateBase"* %115, %"class.llvm::AttributeSet"* %PAS121)
          to label %invoke.cont138 unwind label %lpad122

invoke.cont138:                                   ; preds = %invoke.cont135
  %116 = load %"class.llvm::Module"** %mod, align 8
  %call141 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %116)
          to label %invoke.cont140 unwind label %lpad122

invoke.cont140:                                   ; preds = %invoke.cont138
  %117 = bitcast %"class.llvm::SmallVector"* %Attrs119 to %"class.llvm::SmallVectorTemplateCommon"*
  invoke void @_ZN4llvm8ArrayRefINS_12AttributeSetEEC2IvEERKNS_25SmallVectorTemplateCommonIS1_T_EE(%"class.llvm::ArrayRef.64"* %agg.tmp142, %"class.llvm::SmallVectorTemplateCommon"* %117)
          to label %invoke.cont143 unwind label %lpad122

invoke.cont143:                                   ; preds = %invoke.cont140
  %118 = bitcast %"class.llvm::ArrayRef.64"* %agg.tmp142 to { %"class.llvm::AttributeSet"*, i64 }*
  %119 = getelementptr { %"class.llvm::AttributeSet"*, i64 }* %118, i32 0, i32 0
  %120 = load %"class.llvm::AttributeSet"** %119, align 1
  %121 = getelementptr { %"class.llvm::AttributeSet"*, i64 }* %118, i32 0, i32 1
  %122 = load i64* %121, align 1
  %call145 = invoke %"class.llvm::AttributeSetImpl"* @_ZN4llvm12AttributeSet3getERNS_11LLVMContextENS_8ArrayRefIS0_EE(%"class.llvm::LLVMContext"* %call141, %"class.llvm::AttributeSet"* %120, i64 %122)
          to label %invoke.cont144 unwind label %lpad122

invoke.cont144:                                   ; preds = %invoke.cont143
  %coerce.dive146 = getelementptr %"class.llvm::AttributeSet"* %ref.tmp139, i32 0, i32 0
  store %"class.llvm::AttributeSetImpl"* %call145, %"class.llvm::AttributeSetImpl"** %coerce.dive146
  %123 = bitcast %"class.llvm::AttributeSet"* %func_main_PAL to i8*
  %124 = bitcast %"class.llvm::AttributeSet"* %ref.tmp139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %124, i64 8, i32 8, i1 false)
  invoke void @_ZN4llvm11SmallVectorINS_12AttributeSetELj4EED2Ev(%"class.llvm::SmallVector"* %Attrs119)
          to label %invoke.cont147 unwind label %lpad56

invoke.cont147:                                   ; preds = %invoke.cont144
  %125 = load %"class.llvm::Function"** %func_main, align 8
  %126 = bitcast %"class.llvm::AttributeSet"* %agg.tmp150 to i8*
  %127 = bitcast %"class.llvm::AttributeSet"* %func_main_PAL to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %127, i64 8, i32 8, i1 false)
  %coerce.dive151 = getelementptr %"class.llvm::AttributeSet"* %agg.tmp150, i32 0, i32 0
  %128 = load %"class.llvm::AttributeSetImpl"** %coerce.dive151
  invoke void @_ZN4llvm8Function13setAttributesENS_12AttributeSetE(%"class.llvm::Function"* %125, %"class.llvm::AttributeSetImpl"* %128)
          to label %invoke.cont152 unwind label %lpad56

invoke.cont152:                                   ; preds = %invoke.cont147
  %129 = load %"class.llvm::Module"** %mod, align 8
  invoke void @_ZN4llvm9StringRefC2EPKc(%"class.llvm::StringRef"* %agg.tmp153, i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0))
          to label %invoke.cont154 unwind label %lpad56

invoke.cont154:                                   ; preds = %invoke.cont152
  %130 = bitcast %"class.llvm::StringRef"* %agg.tmp153 to { i8*, i64 }*
  %131 = getelementptr { i8*, i64 }* %130, i32 0, i32 0
  %132 = load i8** %131, align 1
  %133 = getelementptr { i8*, i64 }* %130, i32 0, i32 1
  %134 = load i64* %133, align 1
  %call156 = invoke %"class.llvm::Function"* @_ZNK4llvm6Module11getFunctionENS_9StringRefE(%"class.llvm::Module"* %129, i8* %132, i64 %134)
          to label %invoke.cont155 unwind label %lpad56

invoke.cont155:                                   ; preds = %invoke.cont154
  store %"class.llvm::Function"* %call156, %"class.llvm::Function"** %func_printf, align 8
  %135 = load %"class.llvm::Function"** %func_printf, align 8
  %tobool157 = icmp ne %"class.llvm::Function"* %135, null
  br i1 %tobool157, label %if.end164, label %if.then158

if.then158:                                       ; preds = %invoke.cont155
  %136 = load %"class.llvm::FunctionType"** %FuncTy_8, align 8
  invoke void @_ZN4llvm5TwineC2EPKc(%"class.llvm::Twine"* %ref.tmp159, i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0))
          to label %invoke.cont160 unwind label %lpad56

invoke.cont160:                                   ; preds = %if.then158
  %137 = load %"class.llvm::Module"** %mod, align 8
  %call162 = invoke %"class.llvm::Function"* @_ZN4llvm8Function6CreateEPNS_12FunctionTypeENS_11GlobalValue12LinkageTypesERKNS_5TwineEPNS_6ModuleE(%"class.llvm::FunctionType"* %136, i32 0, %"class.llvm::Twine"* %ref.tmp159, %"class.llvm::Module"* %137)
          to label %invoke.cont161 unwind label %lpad56

invoke.cont161:                                   ; preds = %invoke.cont160
  store %"class.llvm::Function"* %call162, %"class.llvm::Function"** %func_printf, align 8
  %138 = load %"class.llvm::Function"** %func_printf, align 8
  invoke void @_ZN4llvm8Function14setCallingConvENS_11CallingConv2IDE(%"class.llvm::Function"* %138, i32 0)
          to label %invoke.cont163 unwind label %lpad56

invoke.cont163:                                   ; preds = %invoke.cont161
  br label %if.end164

lpad122:                                          ; preds = %invoke.cont143, %invoke.cont140, %invoke.cont138, %invoke.cont135, %invoke.cont132, %invoke.cont123, %invoke.cont120
  %139 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %140 = extractvalue { i8*, i32 } %139, 0
  store i8* %140, i8** %exn.slot
  %141 = extractvalue { i8*, i32 } %139, 1
  store i32 %141, i32* %ehselector.slot
  br label %ehcleanup148

lpad126:                                          ; preds = %invoke.cont130, %invoke.cont127, %invoke.cont125
  %142 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %143 = extractvalue { i8*, i32 } %142, 0
  store i8* %143, i8** %exn.slot
  %144 = extractvalue { i8*, i32 } %142, 1
  store i32 %144, i32* %ehselector.slot
  invoke void @_ZN4llvm11AttrBuilderD2Ev(%"class.llvm::AttrBuilder"* %B124)
          to label %invoke.cont137 unwind label %terminate.lpad

invoke.cont137:                                   ; preds = %lpad126
  br label %ehcleanup148

ehcleanup148:                                     ; preds = %invoke.cont137, %lpad122
  invoke void @_ZN4llvm11SmallVectorINS_12AttributeSetELj4EED2Ev(%"class.llvm::SmallVector"* %Attrs119)
          to label %invoke.cont149 unwind label %terminate.lpad

invoke.cont149:                                   ; preds = %ehcleanup148
  br label %ehcleanup513

if.end164:                                        ; preds = %invoke.cont163, %invoke.cont155
  invoke void @_ZN4llvm12AttributeSetC2Ev(%"class.llvm::AttributeSet"* %func_printf_PAL)
          to label %invoke.cont165 unwind label %lpad56

invoke.cont165:                                   ; preds = %if.end164
  invoke void @_ZN4llvm11SmallVectorINS_12AttributeSetELj4EEC2Ev(%"class.llvm::SmallVector"* %Attrs166)
          to label %invoke.cont167 unwind label %lpad56

invoke.cont167:                                   ; preds = %invoke.cont165
  invoke void @_ZN4llvm12AttributeSetC2Ev(%"class.llvm::AttributeSet"* %PAS168)
          to label %invoke.cont170 unwind label %lpad169

invoke.cont170:                                   ; preds = %invoke.cont167
  invoke void @_ZN4llvm11AttrBuilderC2Ev(%"class.llvm::AttrBuilder"* %B171)
          to label %invoke.cont172 unwind label %lpad169

invoke.cont172:                                   ; preds = %invoke.cont170
  %145 = load %"class.llvm::Module"** %mod, align 8
  %call176 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %145)
          to label %invoke.cont175 unwind label %lpad174

invoke.cont175:                                   ; preds = %invoke.cont172
  %call178 = invoke %"class.llvm::AttributeSetImpl"* @_ZN4llvm12AttributeSet3getERNS_11LLVMContextEjRNS_11AttrBuilderE(%"class.llvm::LLVMContext"* %call176, i32 -1, %"class.llvm::AttrBuilder"* %B171)
          to label %invoke.cont177 unwind label %lpad174

invoke.cont177:                                   ; preds = %invoke.cont175
  %coerce.dive179 = getelementptr %"class.llvm::AttributeSet"* %ref.tmp173, i32 0, i32 0
  store %"class.llvm::AttributeSetImpl"* %call178, %"class.llvm::AttributeSetImpl"** %coerce.dive179
  %146 = bitcast %"class.llvm::AttributeSet"* %PAS168 to i8*
  %147 = bitcast %"class.llvm::AttributeSet"* %ref.tmp173 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %146, i8* %147, i64 8, i32 8, i1 false)
  invoke void @_ZN4llvm11AttrBuilderD2Ev(%"class.llvm::AttrBuilder"* %B171)
          to label %invoke.cont180 unwind label %lpad169

invoke.cont180:                                   ; preds = %invoke.cont177
  %148 = bitcast %"class.llvm::SmallVector"* %Attrs166 to %"class.llvm::SmallVectorTemplateBase"*
  invoke void @_ZN4llvm23SmallVectorTemplateBaseINS_12AttributeSetELb1EE9push_backERKS1_(%"class.llvm::SmallVectorTemplateBase"* %148, %"class.llvm::AttributeSet"* %PAS168)
          to label %invoke.cont183 unwind label %lpad169

invoke.cont183:                                   ; preds = %invoke.cont180
  %149 = load %"class.llvm::Module"** %mod, align 8
  %call186 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %149)
          to label %invoke.cont185 unwind label %lpad169

invoke.cont185:                                   ; preds = %invoke.cont183
  %150 = bitcast %"class.llvm::SmallVector"* %Attrs166 to %"class.llvm::SmallVectorTemplateCommon"*
  invoke void @_ZN4llvm8ArrayRefINS_12AttributeSetEEC2IvEERKNS_25SmallVectorTemplateCommonIS1_T_EE(%"class.llvm::ArrayRef.64"* %agg.tmp187, %"class.llvm::SmallVectorTemplateCommon"* %150)
          to label %invoke.cont188 unwind label %lpad169

invoke.cont188:                                   ; preds = %invoke.cont185
  %151 = bitcast %"class.llvm::ArrayRef.64"* %agg.tmp187 to { %"class.llvm::AttributeSet"*, i64 }*
  %152 = getelementptr { %"class.llvm::AttributeSet"*, i64 }* %151, i32 0, i32 0
  %153 = load %"class.llvm::AttributeSet"** %152, align 1
  %154 = getelementptr { %"class.llvm::AttributeSet"*, i64 }* %151, i32 0, i32 1
  %155 = load i64* %154, align 1
  %call190 = invoke %"class.llvm::AttributeSetImpl"* @_ZN4llvm12AttributeSet3getERNS_11LLVMContextENS_8ArrayRefIS0_EE(%"class.llvm::LLVMContext"* %call186, %"class.llvm::AttributeSet"* %153, i64 %155)
          to label %invoke.cont189 unwind label %lpad169

invoke.cont189:                                   ; preds = %invoke.cont188
  %coerce.dive191 = getelementptr %"class.llvm::AttributeSet"* %ref.tmp184, i32 0, i32 0
  store %"class.llvm::AttributeSetImpl"* %call190, %"class.llvm::AttributeSetImpl"** %coerce.dive191
  %156 = bitcast %"class.llvm::AttributeSet"* %func_printf_PAL to i8*
  %157 = bitcast %"class.llvm::AttributeSet"* %ref.tmp184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %156, i8* %157, i64 8, i32 8, i1 false)
  invoke void @_ZN4llvm11SmallVectorINS_12AttributeSetELj4EED2Ev(%"class.llvm::SmallVector"* %Attrs166)
          to label %invoke.cont192 unwind label %lpad56

invoke.cont192:                                   ; preds = %invoke.cont189
  %158 = load %"class.llvm::Function"** %func_printf, align 8
  %159 = bitcast %"class.llvm::AttributeSet"* %agg.tmp195 to i8*
  %160 = bitcast %"class.llvm::AttributeSet"* %func_printf_PAL to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %159, i8* %160, i64 8, i32 8, i1 false)
  %coerce.dive196 = getelementptr %"class.llvm::AttributeSet"* %agg.tmp195, i32 0, i32 0
  %161 = load %"class.llvm::AttributeSetImpl"** %coerce.dive196
  invoke void @_ZN4llvm8Function13setAttributesENS_12AttributeSetE(%"class.llvm::Function"* %158, %"class.llvm::AttributeSetImpl"* %161)
          to label %invoke.cont197 unwind label %lpad56

invoke.cont197:                                   ; preds = %invoke.cont192
  %call199 = invoke i8* @_ZN4llvm14GlobalVariablenwEm(i64 120)
          to label %invoke.cont198 unwind label %lpad56

invoke.cont198:                                   ; preds = %invoke.cont197
  %162 = bitcast i8* %call199 to %"class.llvm::GlobalVariable"*
  %163 = load %"class.llvm::Module"** %mod, align 8
  %164 = load %"class.llvm::ArrayType"** %ArrayTy_0, align 8
  %165 = bitcast %"class.llvm::ArrayType"* %164 to %"class.llvm::Type"*
  invoke void @_ZN4llvm5TwineC2EPKc(%"class.llvm::Twine"* %ref.tmp200, i8* getelementptr inbounds ([5 x i8]* @.str7, i32 0, i32 0))
          to label %invoke.cont202 unwind label %lpad201

invoke.cont202:                                   ; preds = %invoke.cont198
  invoke void @_ZN4llvm14GlobalVariableC1ERNS_6ModuleEPNS_4TypeEbNS_11GlobalValue12LinkageTypesEPNS_8ConstantERKNS_5TwineEPS0_NS0_15ThreadLocalModeEjb(%"class.llvm::GlobalVariable"* %162, %"class.llvm::Module"* %163, %"class.llvm::Type"* %165, i1 zeroext true, i32 8, %"class.llvm::Constant"* null, %"class.llvm::Twine"* %ref.tmp200, %"class.llvm::GlobalVariable"* null, i32 0, i32 0, i1 zeroext false)
          to label %invoke.cont203 unwind label %lpad201

invoke.cont203:                                   ; preds = %invoke.cont202
  store %"class.llvm::GlobalVariable"* %162, %"class.llvm::GlobalVariable"** %gvar_array__str, align 8
  %166 = load %"class.llvm::GlobalVariable"** %gvar_array__str, align 8
  %167 = bitcast %"class.llvm::GlobalVariable"* %166 to %"class.llvm::GlobalValue"*
  invoke void @_ZN4llvm11GlobalValue12setAlignmentEj(%"class.llvm::GlobalValue"* %167, i32 1)
          to label %invoke.cont206 unwind label %lpad56

invoke.cont206:                                   ; preds = %invoke.cont203
  %168 = load %"class.llvm::Module"** %mod, align 8
  %call208 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %168)
          to label %invoke.cont207 unwind label %lpad56

invoke.cont207:                                   ; preds = %invoke.cont206
  invoke void @_ZN4llvm9StringRefC2EPKc(%"class.llvm::StringRef"* %agg.tmp209, i8* getelementptr inbounds ([4 x i8]* @.str8, i32 0, i32 0))
          to label %invoke.cont210 unwind label %lpad56

invoke.cont210:                                   ; preds = %invoke.cont207
  %169 = bitcast %"class.llvm::StringRef"* %agg.tmp209 to { i8*, i64 }*
  %170 = getelementptr { i8*, i64 }* %169, i32 0, i32 0
  %171 = load i8** %170, align 1
  %172 = getelementptr { i8*, i64 }* %169, i32 0, i32 1
  %173 = load i64* %172, align 1
  %call212 = invoke %"class.llvm::Constant"* @_ZN4llvm17ConstantDataArray9getStringERNS_11LLVMContextENS_9StringRefEb(%"class.llvm::LLVMContext"* %call208, i8* %171, i64 %173, i1 zeroext true)
          to label %invoke.cont211 unwind label %lpad56

invoke.cont211:                                   ; preds = %invoke.cont210
  store %"class.llvm::Constant"* %call212, %"class.llvm::Constant"** %const_array_9, align 8
  %174 = load %"class.llvm::Module"** %mod, align 8
  %call214 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %174)
          to label %invoke.cont213 unwind label %lpad56

invoke.cont213:                                   ; preds = %invoke.cont211
  invoke void @_ZN4llvm9StringRefC2EPKc(%"class.llvm::StringRef"* %agg.tmp216, i8* getelementptr inbounds ([2 x i8]* @.str9, i32 0, i32 0))
          to label %invoke.cont217 unwind label %lpad56

invoke.cont217:                                   ; preds = %invoke.cont213
  %175 = bitcast %"class.llvm::StringRef"* %agg.tmp216 to { i8*, i64 }*
  %176 = getelementptr { i8*, i64 }* %175, i32 0, i32 0
  %177 = load i8** %176, align 1
  %178 = getelementptr { i8*, i64 }* %175, i32 0, i32 1
  %179 = load i64* %178, align 1
  invoke void @_ZN4llvm5APIntC1EjNS_9StringRefEh(%"class.llvm::APInt"* %ref.tmp215, i32 32, i8* %177, i64 %179, i8 zeroext 10)
          to label %invoke.cont218 unwind label %lpad56

invoke.cont218:                                   ; preds = %invoke.cont217
  %call221 = invoke %"class.llvm::ConstantInt"* @_ZN4llvm11ConstantInt3getERNS_11LLVMContextERKNS_5APIntE(%"class.llvm::LLVMContext"* %call214, %"class.llvm::APInt"* %ref.tmp215)
          to label %invoke.cont220 unwind label %lpad219

invoke.cont220:                                   ; preds = %invoke.cont218
  invoke void @_ZN4llvm5APIntD2Ev(%"class.llvm::APInt"* %ref.tmp215)
          to label %invoke.cont222 unwind label %lpad56

invoke.cont222:                                   ; preds = %invoke.cont220
  store %"class.llvm::ConstantInt"* %call221, %"class.llvm::ConstantInt"** %const_int32_10, align 8
  %180 = load %"class.llvm::Module"** %mod, align 8
  %call226 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %180)
          to label %invoke.cont225 unwind label %lpad56

invoke.cont225:                                   ; preds = %invoke.cont222
  invoke void @_ZN4llvm9StringRefC2EPKc(%"class.llvm::StringRef"* %agg.tmp228, i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0))
          to label %invoke.cont229 unwind label %lpad56

invoke.cont229:                                   ; preds = %invoke.cont225
  %181 = bitcast %"class.llvm::StringRef"* %agg.tmp228 to { i8*, i64 }*
  %182 = getelementptr { i8*, i64 }* %181, i32 0, i32 0
  %183 = load i8** %182, align 1
  %184 = getelementptr { i8*, i64 }* %181, i32 0, i32 1
  %185 = load i64* %184, align 1
  invoke void @_ZN4llvm5APIntC1EjNS_9StringRefEh(%"class.llvm::APInt"* %ref.tmp227, i32 32, i8* %183, i64 %185, i8 zeroext 10)
          to label %invoke.cont230 unwind label %lpad56

invoke.cont230:                                   ; preds = %invoke.cont229
  %call233 = invoke %"class.llvm::ConstantInt"* @_ZN4llvm11ConstantInt3getERNS_11LLVMContextERKNS_5APIntE(%"class.llvm::LLVMContext"* %call226, %"class.llvm::APInt"* %ref.tmp227)
          to label %invoke.cont232 unwind label %lpad231

invoke.cont232:                                   ; preds = %invoke.cont230
  invoke void @_ZN4llvm5APIntD2Ev(%"class.llvm::APInt"* %ref.tmp227)
          to label %invoke.cont234 unwind label %lpad56

invoke.cont234:                                   ; preds = %invoke.cont232
  store %"class.llvm::ConstantInt"* %call233, %"class.llvm::ConstantInt"** %const_int32_11, align 8
  %186 = load %"class.llvm::Module"** %mod, align 8
  %call238 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %186)
          to label %invoke.cont237 unwind label %lpad56

invoke.cont237:                                   ; preds = %invoke.cont234
  invoke void @_ZN4llvm9StringRefC2EPKc(%"class.llvm::StringRef"* %agg.tmp240, i8* getelementptr inbounds ([3 x i8]* @.str11, i32 0, i32 0))
          to label %invoke.cont241 unwind label %lpad56

invoke.cont241:                                   ; preds = %invoke.cont237
  %187 = bitcast %"class.llvm::StringRef"* %agg.tmp240 to { i8*, i64 }*
  %188 = getelementptr { i8*, i64 }* %187, i32 0, i32 0
  %189 = load i8** %188, align 1
  %190 = getelementptr { i8*, i64 }* %187, i32 0, i32 1
  %191 = load i64* %190, align 1
  invoke void @_ZN4llvm5APIntC1EjNS_9StringRefEh(%"class.llvm::APInt"* %ref.tmp239, i32 32, i8* %189, i64 %191, i8 zeroext 10)
          to label %invoke.cont242 unwind label %lpad56

invoke.cont242:                                   ; preds = %invoke.cont241
  %call245 = invoke %"class.llvm::ConstantInt"* @_ZN4llvm11ConstantInt3getERNS_11LLVMContextERKNS_5APIntE(%"class.llvm::LLVMContext"* %call238, %"class.llvm::APInt"* %ref.tmp239)
          to label %invoke.cont244 unwind label %lpad243

invoke.cont244:                                   ; preds = %invoke.cont242
  invoke void @_ZN4llvm5APIntD2Ev(%"class.llvm::APInt"* %ref.tmp239)
          to label %invoke.cont246 unwind label %lpad56

invoke.cont246:                                   ; preds = %invoke.cont244
  store %"class.llvm::ConstantInt"* %call245, %"class.llvm::ConstantInt"** %const_int32_12, align 8
  %192 = load %"class.llvm::Module"** %mod, align 8
  %call250 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %192)
          to label %invoke.cont249 unwind label %lpad56

invoke.cont249:                                   ; preds = %invoke.cont246
  invoke void @_ZN4llvm9StringRefC2EPKc(%"class.llvm::StringRef"* %agg.tmp252, i8* getelementptr inbounds ([3 x i8]* @.str12, i32 0, i32 0))
          to label %invoke.cont253 unwind label %lpad56

invoke.cont253:                                   ; preds = %invoke.cont249
  %193 = bitcast %"class.llvm::StringRef"* %agg.tmp252 to { i8*, i64 }*
  %194 = getelementptr { i8*, i64 }* %193, i32 0, i32 0
  %195 = load i8** %194, align 1
  %196 = getelementptr { i8*, i64 }* %193, i32 0, i32 1
  %197 = load i64* %196, align 1
  invoke void @_ZN4llvm5APIntC1EjNS_9StringRefEh(%"class.llvm::APInt"* %ref.tmp251, i32 32, i8* %195, i64 %197, i8 zeroext 10)
          to label %invoke.cont254 unwind label %lpad56

invoke.cont254:                                   ; preds = %invoke.cont253
  %call257 = invoke %"class.llvm::ConstantInt"* @_ZN4llvm11ConstantInt3getERNS_11LLVMContextERKNS_5APIntE(%"class.llvm::LLVMContext"* %call250, %"class.llvm::APInt"* %ref.tmp251)
          to label %invoke.cont256 unwind label %lpad255

invoke.cont256:                                   ; preds = %invoke.cont254
  invoke void @_ZN4llvm5APIntD2Ev(%"class.llvm::APInt"* %ref.tmp251)
          to label %invoke.cont258 unwind label %lpad56

invoke.cont258:                                   ; preds = %invoke.cont256
  store %"class.llvm::ConstantInt"* %call257, %"class.llvm::ConstantInt"** %const_int32_13, align 8
  invoke void @_ZNSt6vectorIPN4llvm8ConstantESaIS2_EEC2Ev(%"class.std::vector.66"* %const_ptr_14_indices)
          to label %invoke.cont261 unwind label %lpad56

invoke.cont261:                                   ; preds = %invoke.cont258
  %198 = load %"class.llvm::ConstantInt"** %const_int32_11, align 8
  %199 = bitcast %"class.llvm::ConstantInt"* %198 to %"class.llvm::Constant"*
  store %"class.llvm::Constant"* %199, %"class.llvm::Constant"** %ref.tmp262
  invoke void @_ZNSt6vectorIPN4llvm8ConstantESaIS2_EE9push_backERKS2_(%"class.std::vector.66"* %const_ptr_14_indices, %"class.llvm::Constant"** %ref.tmp262)
          to label %invoke.cont264 unwind label %lpad263

invoke.cont264:                                   ; preds = %invoke.cont261
  %200 = load %"class.llvm::ConstantInt"** %const_int32_11, align 8
  %201 = bitcast %"class.llvm::ConstantInt"* %200 to %"class.llvm::Constant"*
  store %"class.llvm::Constant"* %201, %"class.llvm::Constant"** %ref.tmp265
  invoke void @_ZNSt6vectorIPN4llvm8ConstantESaIS2_EE9push_backERKS2_(%"class.std::vector.66"* %const_ptr_14_indices, %"class.llvm::Constant"** %ref.tmp265)
          to label %invoke.cont266 unwind label %lpad263

invoke.cont266:                                   ; preds = %invoke.cont264
  %202 = load %"class.llvm::GlobalVariable"** %gvar_array__str, align 8
  %203 = bitcast %"class.llvm::GlobalVariable"* %202 to %"class.llvm::Constant"*
  invoke void @_ZN4llvm8ArrayRefIPNS_8ConstantEEC2ISaIS2_EEERKSt6vectorIS2_T_E(%"class.llvm::ArrayRef.71"* %agg.tmp267, %"class.std::vector.66"* %const_ptr_14_indices)
          to label %invoke.cont268 unwind label %lpad263

invoke.cont268:                                   ; preds = %invoke.cont266
  %204 = bitcast %"class.llvm::ArrayRef.71"* %agg.tmp267 to { %"class.llvm::Constant"**, i64 }*
  %205 = getelementptr { %"class.llvm::Constant"**, i64 }* %204, i32 0, i32 0
  %206 = load %"class.llvm::Constant"*** %205, align 1
  %207 = getelementptr { %"class.llvm::Constant"**, i64 }* %204, i32 0, i32 1
  %208 = load i64* %207, align 1
  %call270 = invoke %"class.llvm::Constant"* @_ZN4llvm12ConstantExpr16getGetElementPtrEPNS_8ConstantENS_8ArrayRefIS2_EEb(%"class.llvm::Constant"* %203, %"class.llvm::Constant"** %206, i64 %208, i1 zeroext false)
          to label %invoke.cont269 unwind label %lpad263

invoke.cont269:                                   ; preds = %invoke.cont268
  store %"class.llvm::Constant"* %call270, %"class.llvm::Constant"** %const_ptr_14, align 8
  %209 = load %"class.llvm::GlobalVariable"** %gvar_array__str, align 8
  %210 = load %"class.llvm::Constant"** %const_array_9, align 8
  invoke void @_ZN4llvm14GlobalVariable14setInitializerEPNS_8ConstantE(%"class.llvm::GlobalVariable"* %209, %"class.llvm::Constant"* %210)
          to label %invoke.cont271 unwind label %lpad263

invoke.cont271:                                   ; preds = %invoke.cont269
  %211 = load %"class.llvm::Function"** %func__Z3gcdjj, align 8
  %call273 = invoke %"class.llvm::Argument"* @_ZN4llvm8Function9arg_beginEv(%"class.llvm::Function"* %211)
          to label %invoke.cont272 unwind label %lpad263

invoke.cont272:                                   ; preds = %invoke.cont271
  %coerce.dive274 = getelementptr %"class.llvm::ilist_iterator"* %args, i32 0, i32 0
  store %"class.llvm::Argument"* %call273, %"class.llvm::Argument"** %coerce.dive274
  %call276 = invoke %"class.llvm::Argument"* @_ZN4llvm14ilist_iteratorINS_8ArgumentEEppEi(%"class.llvm::ilist_iterator"* %args, i32 0)
          to label %invoke.cont275 unwind label %lpad263

invoke.cont275:                                   ; preds = %invoke.cont272
  %coerce.dive277 = getelementptr %"class.llvm::ilist_iterator"* %coerce, i32 0, i32 0
  store %"class.llvm::Argument"* %call276, %"class.llvm::Argument"** %coerce.dive277
  %call279 = invoke %"class.llvm::Argument"* @_ZNK4llvm14ilist_iteratorINS_8ArgumentEEcvPS1_Ev(%"class.llvm::ilist_iterator"* %coerce)
          to label %invoke.cont278 unwind label %lpad263

invoke.cont278:                                   ; preds = %invoke.cont275
  %212 = bitcast %"class.llvm::Argument"* %call279 to %"class.llvm::Value"*
  store %"class.llvm::Value"* %212, %"class.llvm::Value"** %int32_n1, align 8
  %213 = load %"class.llvm::Value"** %int32_n1, align 8
  invoke void @_ZN4llvm5TwineC2EPKc(%"class.llvm::Twine"* %ref.tmp280, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0))
          to label %invoke.cont281 unwind label %lpad263

invoke.cont281:                                   ; preds = %invoke.cont278
  invoke void @_ZN4llvm5Value7setNameERKNS_5TwineE(%"class.llvm::Value"* %213, %"class.llvm::Twine"* %ref.tmp280)
          to label %invoke.cont282 unwind label %lpad263

invoke.cont282:                                   ; preds = %invoke.cont281
  %call284 = invoke %"class.llvm::Argument"* @_ZN4llvm14ilist_iteratorINS_8ArgumentEEppEi(%"class.llvm::ilist_iterator"* %args, i32 0)
          to label %invoke.cont283 unwind label %lpad263

invoke.cont283:                                   ; preds = %invoke.cont282
  %coerce.dive286 = getelementptr %"class.llvm::ilist_iterator"* %coerce285, i32 0, i32 0
  store %"class.llvm::Argument"* %call284, %"class.llvm::Argument"** %coerce.dive286
  %call288 = invoke %"class.llvm::Argument"* @_ZNK4llvm14ilist_iteratorINS_8ArgumentEEcvPS1_Ev(%"class.llvm::ilist_iterator"* %coerce285)
          to label %invoke.cont287 unwind label %lpad263

invoke.cont287:                                   ; preds = %invoke.cont283
  %214 = bitcast %"class.llvm::Argument"* %call288 to %"class.llvm::Value"*
  store %"class.llvm::Value"* %214, %"class.llvm::Value"** %int32_n2, align 8
  %215 = load %"class.llvm::Value"** %int32_n2, align 8
  invoke void @_ZN4llvm5TwineC2EPKc(%"class.llvm::Twine"* %ref.tmp289, i8* getelementptr inbounds ([3 x i8]* @.str14, i32 0, i32 0))
          to label %invoke.cont290 unwind label %lpad263

invoke.cont290:                                   ; preds = %invoke.cont287
  invoke void @_ZN4llvm5Value7setNameERKNS_5TwineE(%"class.llvm::Value"* %215, %"class.llvm::Twine"* %ref.tmp289)
          to label %invoke.cont291 unwind label %lpad263

invoke.cont291:                                   ; preds = %invoke.cont290
  %216 = load %"class.llvm::Module"** %mod, align 8
  %call293 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %216)
          to label %invoke.cont292 unwind label %lpad263

invoke.cont292:                                   ; preds = %invoke.cont291
  invoke void @_ZN4llvm5TwineC2EPKc(%"class.llvm::Twine"* %ref.tmp294, i8* getelementptr inbounds ([6 x i8]* @.str15, i32 0, i32 0))
          to label %invoke.cont295 unwind label %lpad263

invoke.cont295:                                   ; preds = %invoke.cont292
  %217 = load %"class.llvm::Function"** %func__Z3gcdjj, align 8
  %call297 = invoke %"class.llvm::BasicBlock"* @_ZN4llvm10BasicBlock6CreateERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(%"class.llvm::LLVMContext"* %call293, %"class.llvm::Twine"* %ref.tmp294, %"class.llvm::Function"* %217, %"class.llvm::BasicBlock"* null)
          to label %invoke.cont296 unwind label %lpad263

invoke.cont296:                                   ; preds = %invoke.cont295
  store %"class.llvm::BasicBlock"* %call297, %"class.llvm::BasicBlock"** %label_entry, align 8
  %218 = load %"class.llvm::Module"** %mod, align 8
  %call299 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %218)
          to label %invoke.cont298 unwind label %lpad263

invoke.cont298:                                   ; preds = %invoke.cont296
  invoke void @_ZN4llvm5TwineC2EPKc(%"class.llvm::Twine"* %ref.tmp300, i8* getelementptr inbounds ([10 x i8]* @.str16, i32 0, i32 0))
          to label %invoke.cont301 unwind label %lpad263

invoke.cont301:                                   ; preds = %invoke.cont298
  %219 = load %"class.llvm::Function"** %func__Z3gcdjj, align 8
  %call303 = invoke %"class.llvm::BasicBlock"* @_ZN4llvm10BasicBlock6CreateERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(%"class.llvm::LLVMContext"* %call299, %"class.llvm::Twine"* %ref.tmp300, %"class.llvm::Function"* %219, %"class.llvm::BasicBlock"* null)
          to label %invoke.cont302 unwind label %lpad263

invoke.cont302:                                   ; preds = %invoke.cont301
  store %"class.llvm::BasicBlock"* %call303, %"class.llvm::BasicBlock"** %label_cond_true, align 8
  %220 = load %"class.llvm::Module"** %mod, align 8
  %call305 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %220)
          to label %invoke.cont304 unwind label %lpad263

invoke.cont304:                                   ; preds = %invoke.cont302
  invoke void @_ZN4llvm5TwineC2EPKc(%"class.llvm::Twine"* %ref.tmp306, i8* getelementptr inbounds ([11 x i8]* @.str17, i32 0, i32 0))
          to label %invoke.cont307 unwind label %lpad263

invoke.cont307:                                   ; preds = %invoke.cont304
  %221 = load %"class.llvm::Function"** %func__Z3gcdjj, align 8
  %call309 = invoke %"class.llvm::BasicBlock"* @_ZN4llvm10BasicBlock6CreateERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(%"class.llvm::LLVMContext"* %call305, %"class.llvm::Twine"* %ref.tmp306, %"class.llvm::Function"* %221, %"class.llvm::BasicBlock"* null)
          to label %invoke.cont308 unwind label %lpad263

invoke.cont308:                                   ; preds = %invoke.cont307
  store %"class.llvm::BasicBlock"* %call309, %"class.llvm::BasicBlock"** %label_cond_false, align 8
  %222 = load %"class.llvm::Module"** %mod, align 8
  %call311 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %222)
          to label %invoke.cont310 unwind label %lpad263

invoke.cont310:                                   ; preds = %invoke.cont308
  invoke void @_ZN4llvm5TwineC2EPKc(%"class.llvm::Twine"* %ref.tmp312, i8* getelementptr inbounds ([9 x i8]* @.str18, i32 0, i32 0))
          to label %invoke.cont313 unwind label %lpad263

invoke.cont313:                                   ; preds = %invoke.cont310
  %223 = load %"class.llvm::Function"** %func__Z3gcdjj, align 8
  %call315 = invoke %"class.llvm::BasicBlock"* @_ZN4llvm10BasicBlock6CreateERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(%"class.llvm::LLVMContext"* %call311, %"class.llvm::Twine"* %ref.tmp312, %"class.llvm::Function"* %223, %"class.llvm::BasicBlock"* null)
          to label %invoke.cont314 unwind label %lpad263

invoke.cont314:                                   ; preds = %invoke.cont313
  store %"class.llvm::BasicBlock"* %call315, %"class.llvm::BasicBlock"** %label_cond_end, align 8
  %call317 = invoke i8* @_ZN4llvm16UnaryInstructionnwEm(i64 88)
          to label %invoke.cont316 unwind label %lpad263

invoke.cont316:                                   ; preds = %invoke.cont314
  %224 = bitcast i8* %call317 to %"class.llvm::AllocaInst"*
  %225 = load %"class.llvm::Module"** %mod, align 8
  %call320 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %225)
          to label %invoke.cont319 unwind label %lpad318

invoke.cont319:                                   ; preds = %invoke.cont316
  %call322 = invoke %"class.llvm::IntegerType"* @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(%"class.llvm::LLVMContext"* %call320, i32 32)
          to label %invoke.cont321 unwind label %lpad318

invoke.cont321:                                   ; preds = %invoke.cont319
  %226 = bitcast %"class.llvm::IntegerType"* %call322 to %"class.llvm::Type"*
  invoke void @_ZN4llvm5TwineC2EPKc(%"class.llvm::Twine"* %ref.tmp323, i8* getelementptr inbounds ([8 x i8]* @.str19, i32 0, i32 0))
          to label %invoke.cont324 unwind label %lpad318

invoke.cont324:                                   ; preds = %invoke.cont321
  %227 = load %"class.llvm::BasicBlock"** %label_entry, align 8
  invoke void @_ZN4llvm10AllocaInstC1EPNS_4TypeERKNS_5TwineEPNS_10BasicBlockE(%"class.llvm::AllocaInst"* %224, %"class.llvm::Type"* %226, %"class.llvm::Twine"* %ref.tmp323, %"class.llvm::BasicBlock"* %227)
          to label %invoke.cont325 unwind label %lpad318

invoke.cont325:                                   ; preds = %invoke.cont324
  store %"class.llvm::AllocaInst"* %224, %"class.llvm::AllocaInst"** %ptr_n1_addr, align 8
  %228 = load %"class.llvm::AllocaInst"** %ptr_n1_addr, align 8
  invoke void @_ZN4llvm10AllocaInst12setAlignmentEj(%"class.llvm::AllocaInst"* %228, i32 4)
          to label %invoke.cont328 unwind label %lpad263

invoke.cont328:                                   ; preds = %invoke.cont325
  %call330 = invoke i8* @_ZN4llvm16UnaryInstructionnwEm(i64 88)
          to label %invoke.cont329 unwind label %lpad263

invoke.cont329:                                   ; preds = %invoke.cont328
  %229 = bitcast i8* %call330 to %"class.llvm::AllocaInst"*
  %230 = load %"class.llvm::Module"** %mod, align 8
  %call333 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %230)
          to label %invoke.cont332 unwind label %lpad331

invoke.cont332:                                   ; preds = %invoke.cont329
  %call335 = invoke %"class.llvm::IntegerType"* @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(%"class.llvm::LLVMContext"* %call333, i32 32)
          to label %invoke.cont334 unwind label %lpad331

invoke.cont334:                                   ; preds = %invoke.cont332
  %231 = bitcast %"class.llvm::IntegerType"* %call335 to %"class.llvm::Type"*
  invoke void @_ZN4llvm5TwineC2EPKc(%"class.llvm::Twine"* %ref.tmp336, i8* getelementptr inbounds ([8 x i8]* @.str20, i32 0, i32 0))
          to label %invoke.cont337 unwind label %lpad331

invoke.cont337:                                   ; preds = %invoke.cont334
  %232 = load %"class.llvm::BasicBlock"** %label_entry, align 8
  invoke void @_ZN4llvm10AllocaInstC1EPNS_4TypeERKNS_5TwineEPNS_10BasicBlockE(%"class.llvm::AllocaInst"* %229, %"class.llvm::Type"* %231, %"class.llvm::Twine"* %ref.tmp336, %"class.llvm::BasicBlock"* %232)
          to label %invoke.cont338 unwind label %lpad331

invoke.cont338:                                   ; preds = %invoke.cont337
  store %"class.llvm::AllocaInst"* %229, %"class.llvm::AllocaInst"** %ptr_n2_addr, align 8
  %233 = load %"class.llvm::AllocaInst"** %ptr_n2_addr, align 8
  invoke void @_ZN4llvm10AllocaInst12setAlignmentEj(%"class.llvm::AllocaInst"* %233, i32 4)
          to label %invoke.cont341 unwind label %lpad263

invoke.cont341:                                   ; preds = %invoke.cont338
  %call343 = invoke i8* @_ZN4llvm9StoreInstnwEm(i64 88)
          to label %invoke.cont342 unwind label %lpad263

invoke.cont342:                                   ; preds = %invoke.cont341
  %234 = bitcast i8* %call343 to %"class.llvm::StoreInst"*
  %235 = load %"class.llvm::Value"** %int32_n1, align 8
  %236 = load %"class.llvm::AllocaInst"** %ptr_n1_addr, align 8
  %237 = bitcast %"class.llvm::AllocaInst"* %236 to %"class.llvm::Value"*
  %238 = load %"class.llvm::BasicBlock"** %label_entry, align 8
  invoke void @_ZN4llvm9StoreInstC1EPNS_5ValueES2_bPNS_10BasicBlockE(%"class.llvm::StoreInst"* %234, %"class.llvm::Value"* %235, %"class.llvm::Value"* %237, i1 zeroext false, %"class.llvm::BasicBlock"* %238)
          to label %invoke.cont345 unwind label %lpad344

invoke.cont345:                                   ; preds = %invoke.cont342
  store %"class.llvm::StoreInst"* %234, %"class.llvm::StoreInst"** %void_15, align 8
  %239 = load %"class.llvm::StoreInst"** %void_15, align 8
  invoke void @_ZN4llvm9StoreInst12setAlignmentEj(%"class.llvm::StoreInst"* %239, i32 4)
          to label %invoke.cont348 unwind label %lpad263

invoke.cont348:                                   ; preds = %invoke.cont345
  %call350 = invoke i8* @_ZN4llvm9StoreInstnwEm(i64 88)
          to label %invoke.cont349 unwind label %lpad263

invoke.cont349:                                   ; preds = %invoke.cont348
  %240 = bitcast i8* %call350 to %"class.llvm::StoreInst"*
  %241 = load %"class.llvm::Value"** %int32_n2, align 8
  %242 = load %"class.llvm::AllocaInst"** %ptr_n2_addr, align 8
  %243 = bitcast %"class.llvm::AllocaInst"* %242 to %"class.llvm::Value"*
  %244 = load %"class.llvm::BasicBlock"** %label_entry, align 8
  invoke void @_ZN4llvm9StoreInstC1EPNS_5ValueES2_bPNS_10BasicBlockE(%"class.llvm::StoreInst"* %240, %"class.llvm::Value"* %241, %"class.llvm::Value"* %243, i1 zeroext false, %"class.llvm::BasicBlock"* %244)
          to label %invoke.cont352 unwind label %lpad351

invoke.cont352:                                   ; preds = %invoke.cont349
  store %"class.llvm::StoreInst"* %240, %"class.llvm::StoreInst"** %void_16, align 8
  %245 = load %"class.llvm::StoreInst"** %void_16, align 8
  invoke void @_ZN4llvm9StoreInst12setAlignmentEj(%"class.llvm::StoreInst"* %245, i32 4)
          to label %invoke.cont355 unwind label %lpad263

invoke.cont355:                                   ; preds = %invoke.cont352
  %call357 = invoke i8* @_ZN4llvm16UnaryInstructionnwEm(i64 88)
          to label %invoke.cont356 unwind label %lpad263

invoke.cont356:                                   ; preds = %invoke.cont355
  %246 = bitcast i8* %call357 to %"class.llvm::LoadInst"*
  %247 = load %"class.llvm::AllocaInst"** %ptr_n2_addr, align 8
  %248 = bitcast %"class.llvm::AllocaInst"* %247 to %"class.llvm::Value"*
  %249 = load %"class.llvm::BasicBlock"** %label_entry, align 8
  invoke void @_ZN4llvm8LoadInstC1EPNS_5ValueEPKcbPNS_10BasicBlockE(%"class.llvm::LoadInst"* %246, %"class.llvm::Value"* %248, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i1 zeroext false, %"class.llvm::BasicBlock"* %249)
          to label %invoke.cont359 unwind label %lpad358

invoke.cont359:                                   ; preds = %invoke.cont356
  store %"class.llvm::LoadInst"* %246, %"class.llvm::LoadInst"** %int32_17, align 8
  %250 = load %"class.llvm::LoadInst"** %int32_17, align 8
  invoke void @_ZN4llvm8LoadInst12setAlignmentEj(%"class.llvm::LoadInst"* %250, i32 4)
          to label %invoke.cont362 unwind label %lpad263

invoke.cont362:                                   ; preds = %invoke.cont359
  %call364 = invoke i8* @_ZN4llvm7CmpInstnwEm(i64 88)
          to label %invoke.cont363 unwind label %lpad263

invoke.cont363:                                   ; preds = %invoke.cont362
  %251 = bitcast i8* %call364 to %"class.llvm::ICmpInst"*
  %252 = load %"class.llvm::BasicBlock"** %label_entry, align 8
  %253 = load %"class.llvm::LoadInst"** %int32_17, align 8
  %254 = bitcast %"class.llvm::LoadInst"* %253 to %"class.llvm::Value"*
  %255 = load %"class.llvm::ConstantInt"** %const_int32_11, align 8
  %256 = bitcast %"class.llvm::ConstantInt"* %255 to %"class.llvm::Value"*
  invoke void @_ZN4llvm5TwineC2EPKc(%"class.llvm::Twine"* %ref.tmp365, i8* getelementptr inbounds ([4 x i8]* @.str21, i32 0, i32 0))
          to label %invoke.cont367 unwind label %lpad366

invoke.cont367:                                   ; preds = %invoke.cont363
  invoke void @_ZN4llvm8ICmpInstC2ERNS_10BasicBlockENS_7CmpInst9PredicateEPNS_5ValueES6_RKNS_5TwineE(%"class.llvm::ICmpInst"* %251, %"class.llvm::BasicBlock"* %252, i32 32, %"class.llvm::Value"* %254, %"class.llvm::Value"* %256, %"class.llvm::Twine"* %ref.tmp365)
          to label %invoke.cont368 unwind label %lpad366

invoke.cont368:                                   ; preds = %invoke.cont367
  store %"class.llvm::ICmpInst"* %251, %"class.llvm::ICmpInst"** %int1_cmp, align 8
  %257 = load %"class.llvm::BasicBlock"** %label_cond_true, align 8
  %258 = load %"class.llvm::BasicBlock"** %label_cond_false, align 8
  %259 = load %"class.llvm::ICmpInst"** %int1_cmp, align 8
  %260 = bitcast %"class.llvm::ICmpInst"* %259 to %"class.llvm::Value"*
  %261 = load %"class.llvm::BasicBlock"** %label_entry, align 8
  %call372 = invoke %"class.llvm::BranchInst"* @_ZN4llvm10BranchInst6CreateEPNS_10BasicBlockES2_PNS_5ValueES2_(%"class.llvm::BasicBlock"* %257, %"class.llvm::BasicBlock"* %258, %"class.llvm::Value"* %260, %"class.llvm::BasicBlock"* %261)
          to label %invoke.cont371 unwind label %lpad263

invoke.cont371:                                   ; preds = %invoke.cont368
  %call374 = invoke i8* @_ZN4llvm16UnaryInstructionnwEm(i64 88)
          to label %invoke.cont373 unwind label %lpad263

invoke.cont373:                                   ; preds = %invoke.cont371
  %262 = bitcast i8* %call374 to %"class.llvm::LoadInst"*
  %263 = load %"class.llvm::AllocaInst"** %ptr_n1_addr, align 8
  %264 = bitcast %"class.llvm::AllocaInst"* %263 to %"class.llvm::Value"*
  %265 = load %"class.llvm::BasicBlock"** %label_cond_true, align 8
  invoke void @_ZN4llvm8LoadInstC1EPNS_5ValueEPKcbPNS_10BasicBlockE(%"class.llvm::LoadInst"* %262, %"class.llvm::Value"* %264, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i1 zeroext false, %"class.llvm::BasicBlock"* %265)
          to label %invoke.cont376 unwind label %lpad375

invoke.cont376:                                   ; preds = %invoke.cont373
  store %"class.llvm::LoadInst"* %262, %"class.llvm::LoadInst"** %int32_19, align 8
  %266 = load %"class.llvm::LoadInst"** %int32_19, align 8
  invoke void @_ZN4llvm8LoadInst12setAlignmentEj(%"class.llvm::LoadInst"* %266, i32 4)
          to label %invoke.cont379 unwind label %lpad263

invoke.cont379:                                   ; preds = %invoke.cont376
  %267 = load %"class.llvm::BasicBlock"** %label_cond_end, align 8
  %268 = load %"class.llvm::BasicBlock"** %label_cond_true, align 8
  %call381 = invoke %"class.llvm::BranchInst"* @_ZN4llvm10BranchInst6CreateEPNS_10BasicBlockES2_(%"class.llvm::BasicBlock"* %267, %"class.llvm::BasicBlock"* %268)
          to label %invoke.cont380 unwind label %lpad263

invoke.cont380:                                   ; preds = %invoke.cont379
  %call383 = invoke i8* @_ZN4llvm16UnaryInstructionnwEm(i64 88)
          to label %invoke.cont382 unwind label %lpad263

invoke.cont382:                                   ; preds = %invoke.cont380
  %269 = bitcast i8* %call383 to %"class.llvm::LoadInst"*
  %270 = load %"class.llvm::AllocaInst"** %ptr_n2_addr, align 8
  %271 = bitcast %"class.llvm::AllocaInst"* %270 to %"class.llvm::Value"*
  %272 = load %"class.llvm::BasicBlock"** %label_cond_false, align 8
  invoke void @_ZN4llvm8LoadInstC1EPNS_5ValueEPKcbPNS_10BasicBlockE(%"class.llvm::LoadInst"* %269, %"class.llvm::Value"* %271, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i1 zeroext false, %"class.llvm::BasicBlock"* %272)
          to label %invoke.cont385 unwind label %lpad384

invoke.cont385:                                   ; preds = %invoke.cont382
  store %"class.llvm::LoadInst"* %269, %"class.llvm::LoadInst"** %int32_21, align 8
  %273 = load %"class.llvm::LoadInst"** %int32_21, align 8
  invoke void @_ZN4llvm8LoadInst12setAlignmentEj(%"class.llvm::LoadInst"* %273, i32 4)
          to label %invoke.cont388 unwind label %lpad263

invoke.cont388:                                   ; preds = %invoke.cont385
  %call390 = invoke i8* @_ZN4llvm16UnaryInstructionnwEm(i64 88)
          to label %invoke.cont389 unwind label %lpad263

invoke.cont389:                                   ; preds = %invoke.cont388
  %274 = bitcast i8* %call390 to %"class.llvm::LoadInst"*
  %275 = load %"class.llvm::AllocaInst"** %ptr_n1_addr, align 8
  %276 = bitcast %"class.llvm::AllocaInst"* %275 to %"class.llvm::Value"*
  %277 = load %"class.llvm::BasicBlock"** %label_cond_false, align 8
  invoke void @_ZN4llvm8LoadInstC1EPNS_5ValueEPKcbPNS_10BasicBlockE(%"class.llvm::LoadInst"* %274, %"class.llvm::Value"* %276, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i1 zeroext false, %"class.llvm::BasicBlock"* %277)
          to label %invoke.cont392 unwind label %lpad391

invoke.cont392:                                   ; preds = %invoke.cont389
  store %"class.llvm::LoadInst"* %274, %"class.llvm::LoadInst"** %int32_22, align 8
  %278 = load %"class.llvm::LoadInst"** %int32_22, align 8
  invoke void @_ZN4llvm8LoadInst12setAlignmentEj(%"class.llvm::LoadInst"* %278, i32 4)
          to label %invoke.cont395 unwind label %lpad263

invoke.cont395:                                   ; preds = %invoke.cont392
  %call397 = invoke i8* @_ZN4llvm16UnaryInstructionnwEm(i64 88)
          to label %invoke.cont396 unwind label %lpad263

invoke.cont396:                                   ; preds = %invoke.cont395
  %279 = bitcast i8* %call397 to %"class.llvm::LoadInst"*
  %280 = load %"class.llvm::AllocaInst"** %ptr_n2_addr, align 8
  %281 = bitcast %"class.llvm::AllocaInst"* %280 to %"class.llvm::Value"*
  %282 = load %"class.llvm::BasicBlock"** %label_cond_false, align 8
  invoke void @_ZN4llvm8LoadInstC1EPNS_5ValueEPKcbPNS_10BasicBlockE(%"class.llvm::LoadInst"* %279, %"class.llvm::Value"* %281, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i1 zeroext false, %"class.llvm::BasicBlock"* %282)
          to label %invoke.cont399 unwind label %lpad398

invoke.cont399:                                   ; preds = %invoke.cont396
  store %"class.llvm::LoadInst"* %279, %"class.llvm::LoadInst"** %int32_23, align 8
  %283 = load %"class.llvm::LoadInst"** %int32_23, align 8
  invoke void @_ZN4llvm8LoadInst12setAlignmentEj(%"class.llvm::LoadInst"* %283, i32 4)
          to label %invoke.cont402 unwind label %lpad263

invoke.cont402:                                   ; preds = %invoke.cont399
  %284 = load %"class.llvm::LoadInst"** %int32_22, align 8
  %285 = bitcast %"class.llvm::LoadInst"* %284 to %"class.llvm::Value"*
  %286 = load %"class.llvm::LoadInst"** %int32_23, align 8
  %287 = bitcast %"class.llvm::LoadInst"* %286 to %"class.llvm::Value"*
  invoke void @_ZN4llvm5TwineC2EPKc(%"class.llvm::Twine"* %ref.tmp403, i8* getelementptr inbounds ([4 x i8]* @.str22, i32 0, i32 0))
          to label %invoke.cont404 unwind label %lpad263

invoke.cont404:                                   ; preds = %invoke.cont402
  %288 = load %"class.llvm::BasicBlock"** %label_cond_false, align 8
  %call406 = invoke %"class.llvm::BinaryOperator"* @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineEPNS_10BasicBlockE(i32 17, %"class.llvm::Value"* %285, %"class.llvm::Value"* %287, %"class.llvm::Twine"* %ref.tmp403, %"class.llvm::BasicBlock"* %288)
          to label %invoke.cont405 unwind label %lpad263

invoke.cont405:                                   ; preds = %invoke.cont404
  store %"class.llvm::BinaryOperator"* %call406, %"class.llvm::BinaryOperator"** %int32_rem, align 8
  invoke void @_ZNSt6vectorIPN4llvm5ValueESaIS2_EEC2Ev(%"class.std::vector.72"* %int32_call_params)
          to label %invoke.cont407 unwind label %lpad263

invoke.cont407:                                   ; preds = %invoke.cont405
  %289 = load %"class.llvm::LoadInst"** %int32_21, align 8
  %290 = bitcast %"class.llvm::LoadInst"* %289 to %"class.llvm::Value"*
  store %"class.llvm::Value"* %290, %"class.llvm::Value"** %ref.tmp408
  invoke void @_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backERKS2_(%"class.std::vector.72"* %int32_call_params, %"class.llvm::Value"** %ref.tmp408)
          to label %invoke.cont410 unwind label %lpad409

invoke.cont410:                                   ; preds = %invoke.cont407
  %291 = load %"class.llvm::BinaryOperator"** %int32_rem, align 8
  %292 = bitcast %"class.llvm::BinaryOperator"* %291 to %"class.llvm::Value"*
  store %"class.llvm::Value"* %292, %"class.llvm::Value"** %ref.tmp411
  invoke void @_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backERKS2_(%"class.std::vector.72"* %int32_call_params, %"class.llvm::Value"** %ref.tmp411)
          to label %invoke.cont412 unwind label %lpad409

invoke.cont412:                                   ; preds = %invoke.cont410
  %293 = load %"class.llvm::Function"** %func__Z3gcdjj, align 8
  %294 = bitcast %"class.llvm::Function"* %293 to %"class.llvm::Value"*
  invoke void @_ZN4llvm8ArrayRefIPNS_5ValueEEC2ISaIS2_EEERKSt6vectorIS2_T_E(%"class.llvm::ArrayRef.77"* %agg.tmp413, %"class.std::vector.72"* %int32_call_params)
          to label %invoke.cont414 unwind label %lpad409

invoke.cont414:                                   ; preds = %invoke.cont412
  invoke void @_ZN4llvm5TwineC2EPKc(%"class.llvm::Twine"* %ref.tmp415, i8* getelementptr inbounds ([5 x i8]* @.str23, i32 0, i32 0))
          to label %invoke.cont416 unwind label %lpad409

invoke.cont416:                                   ; preds = %invoke.cont414
  %295 = load %"class.llvm::BasicBlock"** %label_cond_false, align 8
  %296 = bitcast %"class.llvm::ArrayRef.77"* %agg.tmp413 to { %"class.llvm::Value"**, i64 }*
  %297 = getelementptr { %"class.llvm::Value"**, i64 }* %296, i32 0, i32 0
  %298 = load %"class.llvm::Value"*** %297, align 1
  %299 = getelementptr { %"class.llvm::Value"**, i64 }* %296, i32 0, i32 1
  %300 = load i64* %299, align 1
  %call418 = invoke %"class.llvm::CallInst"* @_ZN4llvm8CallInst6CreateEPNS_5ValueENS_8ArrayRefIS2_EERKNS_5TwineEPNS_10BasicBlockE(%"class.llvm::Value"* %294, %"class.llvm::Value"** %298, i64 %300, %"class.llvm::Twine"* %ref.tmp415, %"class.llvm::BasicBlock"* %295)
          to label %invoke.cont417 unwind label %lpad409

invoke.cont417:                                   ; preds = %invoke.cont416
  store %"class.llvm::CallInst"* %call418, %"class.llvm::CallInst"** %int32_call, align 8
  %301 = load %"class.llvm::CallInst"** %int32_call, align 8
  invoke void @_ZN4llvm8CallInst14setCallingConvENS_11CallingConv2IDE(%"class.llvm::CallInst"* %301, i32 0)
          to label %invoke.cont419 unwind label %lpad409

invoke.cont419:                                   ; preds = %invoke.cont417
  %302 = load %"class.llvm::CallInst"** %int32_call, align 8
  invoke void @_ZN4llvm8CallInst11setTailCallEb(%"class.llvm::CallInst"* %302, i1 zeroext false)
          to label %invoke.cont420 unwind label %lpad409

invoke.cont420:                                   ; preds = %invoke.cont419
  invoke void @_ZN4llvm12AttributeSetC2Ev(%"class.llvm::AttributeSet"* %int32_call_PAL)
          to label %invoke.cont421 unwind label %lpad409

invoke.cont421:                                   ; preds = %invoke.cont420
  %303 = load %"class.llvm::CallInst"** %int32_call, align 8
  invoke void @_ZN4llvm8CallInst13setAttributesERKNS_12AttributeSetE(%"class.llvm::CallInst"* %303, %"class.llvm::AttributeSet"* %int32_call_PAL)
          to label %invoke.cont422 unwind label %lpad409

invoke.cont422:                                   ; preds = %invoke.cont421
  %304 = load %"class.llvm::BasicBlock"** %label_cond_end, align 8
  %305 = load %"class.llvm::BasicBlock"** %label_cond_false, align 8
  %call424 = invoke %"class.llvm::BranchInst"* @_ZN4llvm10BranchInst6CreateEPNS_10BasicBlockES2_(%"class.llvm::BasicBlock"* %304, %"class.llvm::BasicBlock"* %305)
          to label %invoke.cont423 unwind label %lpad409

invoke.cont423:                                   ; preds = %invoke.cont422
  %306 = load %"class.llvm::Module"** %mod, align 8
  %call426 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %306)
          to label %invoke.cont425 unwind label %lpad409

invoke.cont425:                                   ; preds = %invoke.cont423
  %call428 = invoke %"class.llvm::IntegerType"* @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(%"class.llvm::LLVMContext"* %call426, i32 32)
          to label %invoke.cont427 unwind label %lpad409

invoke.cont427:                                   ; preds = %invoke.cont425
  %307 = bitcast %"class.llvm::IntegerType"* %call428 to %"class.llvm::Type"*
  invoke void @_ZN4llvm5TwineC2EPKc(%"class.llvm::Twine"* %ref.tmp429, i8* getelementptr inbounds ([5 x i8]* @.str24, i32 0, i32 0))
          to label %invoke.cont430 unwind label %lpad409

invoke.cont430:                                   ; preds = %invoke.cont427
  %308 = load %"class.llvm::BasicBlock"** %label_cond_end, align 8
  %call432 = invoke %"class.llvm::PHINode"* @_ZN4llvm7PHINode6CreateEPNS_4TypeEjRKNS_5TwineEPNS_10BasicBlockE(%"class.llvm::Type"* %307, i32 2, %"class.llvm::Twine"* %ref.tmp429, %"class.llvm::BasicBlock"* %308)
          to label %invoke.cont431 unwind label %lpad409

invoke.cont431:                                   ; preds = %invoke.cont430
  store %"class.llvm::PHINode"* %call432, %"class.llvm::PHINode"** %int32_cond, align 8
  %309 = load %"class.llvm::PHINode"** %int32_cond, align 8
  %310 = load %"class.llvm::LoadInst"** %int32_19, align 8
  %311 = bitcast %"class.llvm::LoadInst"* %310 to %"class.llvm::Value"*
  %312 = load %"class.llvm::BasicBlock"** %label_cond_true, align 8
  invoke void @_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE(%"class.llvm::PHINode"* %309, %"class.llvm::Value"* %311, %"class.llvm::BasicBlock"* %312)
          to label %invoke.cont433 unwind label %lpad409

invoke.cont433:                                   ; preds = %invoke.cont431
  %313 = load %"class.llvm::PHINode"** %int32_cond, align 8
  %314 = load %"class.llvm::CallInst"** %int32_call, align 8
  %315 = bitcast %"class.llvm::CallInst"* %314 to %"class.llvm::Value"*
  %316 = load %"class.llvm::BasicBlock"** %label_cond_false, align 8
  invoke void @_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE(%"class.llvm::PHINode"* %313, %"class.llvm::Value"* %315, %"class.llvm::BasicBlock"* %316)
          to label %invoke.cont434 unwind label %lpad409

invoke.cont434:                                   ; preds = %invoke.cont433
  %317 = load %"class.llvm::Module"** %mod, align 8
  %call436 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %317)
          to label %invoke.cont435 unwind label %lpad409

invoke.cont435:                                   ; preds = %invoke.cont434
  %318 = load %"class.llvm::PHINode"** %int32_cond, align 8
  %319 = bitcast %"class.llvm::PHINode"* %318 to %"class.llvm::Value"*
  %320 = load %"class.llvm::BasicBlock"** %label_cond_end, align 8
  %call438 = invoke %"class.llvm::ReturnInst"* @_ZN4llvm10ReturnInst6CreateERNS_11LLVMContextEPNS_5ValueEPNS_10BasicBlockE(%"class.llvm::LLVMContext"* %call436, %"class.llvm::Value"* %319, %"class.llvm::BasicBlock"* %320)
          to label %invoke.cont437 unwind label %lpad409

invoke.cont437:                                   ; preds = %invoke.cont435
  invoke void @_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev(%"class.std::vector.72"* %int32_call_params)
          to label %invoke.cont439 unwind label %lpad263

invoke.cont439:                                   ; preds = %invoke.cont437
  %321 = load %"class.llvm::Module"** %mod, align 8
  %call443 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %321)
          to label %invoke.cont442 unwind label %lpad263

invoke.cont442:                                   ; preds = %invoke.cont439
  invoke void @_ZN4llvm5TwineC2EPKc(%"class.llvm::Twine"* %ref.tmp444, i8* getelementptr inbounds ([6 x i8]* @.str15, i32 0, i32 0))
          to label %invoke.cont445 unwind label %lpad263

invoke.cont445:                                   ; preds = %invoke.cont442
  %322 = load %"class.llvm::Function"** %func_main, align 8
  %call447 = invoke %"class.llvm::BasicBlock"* @_ZN4llvm10BasicBlock6CreateERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(%"class.llvm::LLVMContext"* %call443, %"class.llvm::Twine"* %ref.tmp444, %"class.llvm::Function"* %322, %"class.llvm::BasicBlock"* null)
          to label %invoke.cont446 unwind label %lpad263

invoke.cont446:                                   ; preds = %invoke.cont445
  store %"class.llvm::BasicBlock"* %call447, %"class.llvm::BasicBlock"** %label_entry_26, align 8
  %call449 = invoke i8* @_ZN4llvm16UnaryInstructionnwEm(i64 88)
          to label %invoke.cont448 unwind label %lpad263

invoke.cont448:                                   ; preds = %invoke.cont446
  %323 = bitcast i8* %call449 to %"class.llvm::AllocaInst"*
  %324 = load %"class.llvm::Module"** %mod, align 8
  %call452 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %324)
          to label %invoke.cont451 unwind label %lpad450

invoke.cont451:                                   ; preds = %invoke.cont448
  %call454 = invoke %"class.llvm::IntegerType"* @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(%"class.llvm::LLVMContext"* %call452, i32 32)
          to label %invoke.cont453 unwind label %lpad450

invoke.cont453:                                   ; preds = %invoke.cont451
  %325 = bitcast %"class.llvm::IntegerType"* %call454 to %"class.llvm::Type"*
  invoke void @_ZN4llvm5TwineC2EPKc(%"class.llvm::Twine"* %ref.tmp455, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
          to label %invoke.cont456 unwind label %lpad450

invoke.cont456:                                   ; preds = %invoke.cont453
  %326 = load %"class.llvm::BasicBlock"** %label_entry_26, align 8
  invoke void @_ZN4llvm10AllocaInstC1EPNS_4TypeERKNS_5TwineEPNS_10BasicBlockE(%"class.llvm::AllocaInst"* %323, %"class.llvm::Type"* %325, %"class.llvm::Twine"* %ref.tmp455, %"class.llvm::BasicBlock"* %326)
          to label %invoke.cont457 unwind label %lpad450

invoke.cont457:                                   ; preds = %invoke.cont456
  store %"class.llvm::AllocaInst"* %323, %"class.llvm::AllocaInst"** %ptr_retval, align 8
  %327 = load %"class.llvm::AllocaInst"** %ptr_retval, align 8
  invoke void @_ZN4llvm10AllocaInst12setAlignmentEj(%"class.llvm::AllocaInst"* %327, i32 4)
          to label %invoke.cont460 unwind label %lpad263

invoke.cont460:                                   ; preds = %invoke.cont457
  %call462 = invoke i8* @_ZN4llvm9StoreInstnwEm(i64 88)
          to label %invoke.cont461 unwind label %lpad263

invoke.cont461:                                   ; preds = %invoke.cont460
  %328 = bitcast i8* %call462 to %"class.llvm::StoreInst"*
  %329 = load %"class.llvm::ConstantInt"** %const_int32_11, align 8
  %330 = bitcast %"class.llvm::ConstantInt"* %329 to %"class.llvm::Value"*
  %331 = load %"class.llvm::AllocaInst"** %ptr_retval, align 8
  %332 = bitcast %"class.llvm::AllocaInst"* %331 to %"class.llvm::Value"*
  %333 = load %"class.llvm::BasicBlock"** %label_entry_26, align 8
  invoke void @_ZN4llvm9StoreInstC1EPNS_5ValueES2_bPNS_10BasicBlockE(%"class.llvm::StoreInst"* %328, %"class.llvm::Value"* %330, %"class.llvm::Value"* %332, i1 zeroext false, %"class.llvm::BasicBlock"* %333)
          to label %invoke.cont464 unwind label %lpad463

invoke.cont464:                                   ; preds = %invoke.cont461
  store %"class.llvm::StoreInst"* %328, %"class.llvm::StoreInst"** %void_27, align 8
  invoke void @_ZNSt6vectorIPN4llvm5ValueESaIS2_EEC2Ev(%"class.std::vector.72"* %int32_call_28_params)
          to label %invoke.cont467 unwind label %lpad263

invoke.cont467:                                   ; preds = %invoke.cont464
  %334 = load %"class.llvm::ConstantInt"** %const_int32_12, align 8
  %335 = bitcast %"class.llvm::ConstantInt"* %334 to %"class.llvm::Value"*
  store %"class.llvm::Value"* %335, %"class.llvm::Value"** %ref.tmp468
  invoke void @_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backERKS2_(%"class.std::vector.72"* %int32_call_28_params, %"class.llvm::Value"** %ref.tmp468)
          to label %invoke.cont470 unwind label %lpad469

invoke.cont470:                                   ; preds = %invoke.cont467
  %336 = load %"class.llvm::ConstantInt"** %const_int32_13, align 8
  %337 = bitcast %"class.llvm::ConstantInt"* %336 to %"class.llvm::Value"*
  store %"class.llvm::Value"* %337, %"class.llvm::Value"** %ref.tmp471
  invoke void @_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backERKS2_(%"class.std::vector.72"* %int32_call_28_params, %"class.llvm::Value"** %ref.tmp471)
          to label %invoke.cont472 unwind label %lpad469

invoke.cont472:                                   ; preds = %invoke.cont470
  %338 = load %"class.llvm::Function"** %func__Z3gcdjj, align 8
  %339 = bitcast %"class.llvm::Function"* %338 to %"class.llvm::Value"*
  invoke void @_ZN4llvm8ArrayRefIPNS_5ValueEEC2ISaIS2_EEERKSt6vectorIS2_T_E(%"class.llvm::ArrayRef.77"* %agg.tmp473, %"class.std::vector.72"* %int32_call_28_params)
          to label %invoke.cont474 unwind label %lpad469

invoke.cont474:                                   ; preds = %invoke.cont472
  invoke void @_ZN4llvm5TwineC2EPKc(%"class.llvm::Twine"* %ref.tmp475, i8* getelementptr inbounds ([5 x i8]* @.str23, i32 0, i32 0))
          to label %invoke.cont476 unwind label %lpad469

invoke.cont476:                                   ; preds = %invoke.cont474
  %340 = load %"class.llvm::BasicBlock"** %label_entry_26, align 8
  %341 = bitcast %"class.llvm::ArrayRef.77"* %agg.tmp473 to { %"class.llvm::Value"**, i64 }*
  %342 = getelementptr { %"class.llvm::Value"**, i64 }* %341, i32 0, i32 0
  %343 = load %"class.llvm::Value"*** %342, align 1
  %344 = getelementptr { %"class.llvm::Value"**, i64 }* %341, i32 0, i32 1
  %345 = load i64* %344, align 1
  %call478 = invoke %"class.llvm::CallInst"* @_ZN4llvm8CallInst6CreateEPNS_5ValueENS_8ArrayRefIS2_EERKNS_5TwineEPNS_10BasicBlockE(%"class.llvm::Value"* %339, %"class.llvm::Value"** %343, i64 %345, %"class.llvm::Twine"* %ref.tmp475, %"class.llvm::BasicBlock"* %340)
          to label %invoke.cont477 unwind label %lpad469

invoke.cont477:                                   ; preds = %invoke.cont476
  store %"class.llvm::CallInst"* %call478, %"class.llvm::CallInst"** %int32_call_28, align 8
  %346 = load %"class.llvm::CallInst"** %int32_call_28, align 8
  invoke void @_ZN4llvm8CallInst14setCallingConvENS_11CallingConv2IDE(%"class.llvm::CallInst"* %346, i32 0)
          to label %invoke.cont479 unwind label %lpad469

invoke.cont479:                                   ; preds = %invoke.cont477
  %347 = load %"class.llvm::CallInst"** %int32_call_28, align 8
  invoke void @_ZN4llvm8CallInst11setTailCallEb(%"class.llvm::CallInst"* %347, i1 zeroext false)
          to label %invoke.cont480 unwind label %lpad469

invoke.cont480:                                   ; preds = %invoke.cont479
  invoke void @_ZN4llvm12AttributeSetC2Ev(%"class.llvm::AttributeSet"* %int32_call_28_PAL)
          to label %invoke.cont481 unwind label %lpad469

invoke.cont481:                                   ; preds = %invoke.cont480
  %348 = load %"class.llvm::CallInst"** %int32_call_28, align 8
  invoke void @_ZN4llvm8CallInst13setAttributesERKNS_12AttributeSetE(%"class.llvm::CallInst"* %348, %"class.llvm::AttributeSet"* %int32_call_28_PAL)
          to label %invoke.cont482 unwind label %lpad469

invoke.cont482:                                   ; preds = %invoke.cont481
  invoke void @_ZNSt6vectorIPN4llvm5ValueESaIS2_EEC2Ev(%"class.std::vector.72"* %int32_call1_params)
          to label %invoke.cont483 unwind label %lpad469

invoke.cont483:                                   ; preds = %invoke.cont482
  %349 = load %"class.llvm::Constant"** %const_ptr_14, align 8
  %350 = bitcast %"class.llvm::Constant"* %349 to %"class.llvm::Value"*
  store %"class.llvm::Value"* %350, %"class.llvm::Value"** %ref.tmp484
  invoke void @_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backERKS2_(%"class.std::vector.72"* %int32_call1_params, %"class.llvm::Value"** %ref.tmp484)
          to label %invoke.cont486 unwind label %lpad485

invoke.cont486:                                   ; preds = %invoke.cont483
  %351 = load %"class.llvm::CallInst"** %int32_call_28, align 8
  %352 = bitcast %"class.llvm::CallInst"* %351 to %"class.llvm::Value"*
  store %"class.llvm::Value"* %352, %"class.llvm::Value"** %ref.tmp487
  invoke void @_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backERKS2_(%"class.std::vector.72"* %int32_call1_params, %"class.llvm::Value"** %ref.tmp487)
          to label %invoke.cont488 unwind label %lpad485

invoke.cont488:                                   ; preds = %invoke.cont486
  %353 = load %"class.llvm::Function"** %func_printf, align 8
  %354 = bitcast %"class.llvm::Function"* %353 to %"class.llvm::Value"*
  invoke void @_ZN4llvm8ArrayRefIPNS_5ValueEEC2ISaIS2_EEERKSt6vectorIS2_T_E(%"class.llvm::ArrayRef.77"* %agg.tmp489, %"class.std::vector.72"* %int32_call1_params)
          to label %invoke.cont490 unwind label %lpad485

invoke.cont490:                                   ; preds = %invoke.cont488
  invoke void @_ZN4llvm5TwineC2EPKc(%"class.llvm::Twine"* %ref.tmp491, i8* getelementptr inbounds ([6 x i8]* @.str26, i32 0, i32 0))
          to label %invoke.cont492 unwind label %lpad485

invoke.cont492:                                   ; preds = %invoke.cont490
  %355 = load %"class.llvm::BasicBlock"** %label_entry_26, align 8
  %356 = bitcast %"class.llvm::ArrayRef.77"* %agg.tmp489 to { %"class.llvm::Value"**, i64 }*
  %357 = getelementptr { %"class.llvm::Value"**, i64 }* %356, i32 0, i32 0
  %358 = load %"class.llvm::Value"*** %357, align 1
  %359 = getelementptr { %"class.llvm::Value"**, i64 }* %356, i32 0, i32 1
  %360 = load i64* %359, align 1
  %call494 = invoke %"class.llvm::CallInst"* @_ZN4llvm8CallInst6CreateEPNS_5ValueENS_8ArrayRefIS2_EERKNS_5TwineEPNS_10BasicBlockE(%"class.llvm::Value"* %354, %"class.llvm::Value"** %358, i64 %360, %"class.llvm::Twine"* %ref.tmp491, %"class.llvm::BasicBlock"* %355)
          to label %invoke.cont493 unwind label %lpad485

invoke.cont493:                                   ; preds = %invoke.cont492
  store %"class.llvm::CallInst"* %call494, %"class.llvm::CallInst"** %int32_call1, align 8
  %361 = load %"class.llvm::CallInst"** %int32_call1, align 8
  invoke void @_ZN4llvm8CallInst14setCallingConvENS_11CallingConv2IDE(%"class.llvm::CallInst"* %361, i32 0)
          to label %invoke.cont495 unwind label %lpad485

invoke.cont495:                                   ; preds = %invoke.cont493
  %362 = load %"class.llvm::CallInst"** %int32_call1, align 8
  invoke void @_ZN4llvm8CallInst11setTailCallEb(%"class.llvm::CallInst"* %362, i1 zeroext false)
          to label %invoke.cont496 unwind label %lpad485

invoke.cont496:                                   ; preds = %invoke.cont495
  invoke void @_ZN4llvm12AttributeSetC2Ev(%"class.llvm::AttributeSet"* %int32_call1_PAL)
          to label %invoke.cont497 unwind label %lpad485

invoke.cont497:                                   ; preds = %invoke.cont496
  %363 = load %"class.llvm::CallInst"** %int32_call1, align 8
  invoke void @_ZN4llvm8CallInst13setAttributesERKNS_12AttributeSetE(%"class.llvm::CallInst"* %363, %"class.llvm::AttributeSet"* %int32_call1_PAL)
          to label %invoke.cont498 unwind label %lpad485

invoke.cont498:                                   ; preds = %invoke.cont497
  %364 = load %"class.llvm::Module"** %mod, align 8
  %call500 = invoke %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %364)
          to label %invoke.cont499 unwind label %lpad485

invoke.cont499:                                   ; preds = %invoke.cont498
  %365 = load %"class.llvm::ConstantInt"** %const_int32_11, align 8
  %366 = bitcast %"class.llvm::ConstantInt"* %365 to %"class.llvm::Value"*
  %367 = load %"class.llvm::BasicBlock"** %label_entry_26, align 8
  %call502 = invoke %"class.llvm::ReturnInst"* @_ZN4llvm10ReturnInst6CreateERNS_11LLVMContextEPNS_5ValueEPNS_10BasicBlockE(%"class.llvm::LLVMContext"* %call500, %"class.llvm::Value"* %366, %"class.llvm::BasicBlock"* %367)
          to label %invoke.cont501 unwind label %lpad485

invoke.cont501:                                   ; preds = %invoke.cont499
  invoke void @_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev(%"class.std::vector.72"* %int32_call1_params)
          to label %invoke.cont503 unwind label %lpad469

invoke.cont503:                                   ; preds = %invoke.cont501
  invoke void @_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev(%"class.std::vector.72"* %int32_call_28_params)
          to label %invoke.cont506 unwind label %lpad263

invoke.cont506:                                   ; preds = %invoke.cont503
  %368 = load %"class.llvm::Module"** %mod, align 8
  store i32 1, i32* %cleanup.dest.slot
  invoke void @_ZNSt6vectorIPN4llvm8ConstantESaIS2_EED2Ev(%"class.std::vector.66"* %const_ptr_14_indices)
          to label %invoke.cont509 unwind label %lpad56

lpad169:                                          ; preds = %invoke.cont188, %invoke.cont185, %invoke.cont183, %invoke.cont180, %invoke.cont177, %invoke.cont170, %invoke.cont167
  %369 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %370 = extractvalue { i8*, i32 } %369, 0
  store i8* %370, i8** %exn.slot
  %371 = extractvalue { i8*, i32 } %369, 1
  store i32 %371, i32* %ehselector.slot
  br label %ehcleanup193

lpad174:                                          ; preds = %invoke.cont175, %invoke.cont172
  %372 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %373 = extractvalue { i8*, i32 } %372, 0
  store i8* %373, i8** %exn.slot
  %374 = extractvalue { i8*, i32 } %372, 1
  store i32 %374, i32* %ehselector.slot
  invoke void @_ZN4llvm11AttrBuilderD2Ev(%"class.llvm::AttrBuilder"* %B171)
          to label %invoke.cont182 unwind label %terminate.lpad

invoke.cont182:                                   ; preds = %lpad174
  br label %ehcleanup193

ehcleanup193:                                     ; preds = %invoke.cont182, %lpad169
  invoke void @_ZN4llvm11SmallVectorINS_12AttributeSetELj4EED2Ev(%"class.llvm::SmallVector"* %Attrs166)
          to label %invoke.cont194 unwind label %terminate.lpad

invoke.cont194:                                   ; preds = %ehcleanup193
  br label %ehcleanup513

lpad201:                                          ; preds = %invoke.cont202, %invoke.cont198
  %375 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %376 = extractvalue { i8*, i32 } %375, 0
  store i8* %376, i8** %exn.slot
  %377 = extractvalue { i8*, i32 } %375, 1
  store i32 %377, i32* %ehselector.slot
  invoke void @_ZN4llvm4UserdlEPv(i8* %call199)
          to label %invoke.cont205 unwind label %terminate.lpad

invoke.cont205:                                   ; preds = %lpad201
  br label %ehcleanup513

lpad219:                                          ; preds = %invoke.cont218
  %378 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %379 = extractvalue { i8*, i32 } %378, 0
  store i8* %379, i8** %exn.slot
  %380 = extractvalue { i8*, i32 } %378, 1
  store i32 %380, i32* %ehselector.slot
  invoke void @_ZN4llvm5APIntD2Ev(%"class.llvm::APInt"* %ref.tmp215)
          to label %invoke.cont224 unwind label %terminate.lpad

invoke.cont224:                                   ; preds = %lpad219
  br label %ehcleanup513

lpad231:                                          ; preds = %invoke.cont230
  %381 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %382 = extractvalue { i8*, i32 } %381, 0
  store i8* %382, i8** %exn.slot
  %383 = extractvalue { i8*, i32 } %381, 1
  store i32 %383, i32* %ehselector.slot
  invoke void @_ZN4llvm5APIntD2Ev(%"class.llvm::APInt"* %ref.tmp227)
          to label %invoke.cont236 unwind label %terminate.lpad

invoke.cont236:                                   ; preds = %lpad231
  br label %ehcleanup513

lpad243:                                          ; preds = %invoke.cont242
  %384 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %385 = extractvalue { i8*, i32 } %384, 0
  store i8* %385, i8** %exn.slot
  %386 = extractvalue { i8*, i32 } %384, 1
  store i32 %386, i32* %ehselector.slot
  invoke void @_ZN4llvm5APIntD2Ev(%"class.llvm::APInt"* %ref.tmp239)
          to label %invoke.cont248 unwind label %terminate.lpad

invoke.cont248:                                   ; preds = %lpad243
  br label %ehcleanup513

lpad255:                                          ; preds = %invoke.cont254
  %387 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %388 = extractvalue { i8*, i32 } %387, 0
  store i8* %388, i8** %exn.slot
  %389 = extractvalue { i8*, i32 } %387, 1
  store i32 %389, i32* %ehselector.slot
  invoke void @_ZN4llvm5APIntD2Ev(%"class.llvm::APInt"* %ref.tmp251)
          to label %invoke.cont260 unwind label %terminate.lpad

invoke.cont260:                                   ; preds = %lpad255
  br label %ehcleanup513

lpad263:                                          ; preds = %invoke.cont503, %invoke.cont464, %invoke.cont460, %invoke.cont457, %invoke.cont446, %invoke.cont445, %invoke.cont442, %invoke.cont439, %invoke.cont437, %invoke.cont405, %invoke.cont404, %invoke.cont402, %invoke.cont399, %invoke.cont395, %invoke.cont392, %invoke.cont388, %invoke.cont385, %invoke.cont380, %invoke.cont379, %invoke.cont376, %invoke.cont371, %invoke.cont368, %invoke.cont362, %invoke.cont359, %invoke.cont355, %invoke.cont352, %invoke.cont348, %invoke.cont345, %invoke.cont341, %invoke.cont338, %invoke.cont328, %invoke.cont325, %invoke.cont314, %invoke.cont313, %invoke.cont310, %invoke.cont308, %invoke.cont307, %invoke.cont304, %invoke.cont302, %invoke.cont301, %invoke.cont298, %invoke.cont296, %invoke.cont295, %invoke.cont292, %invoke.cont291, %invoke.cont290, %invoke.cont287, %invoke.cont283, %invoke.cont282, %invoke.cont281, %invoke.cont278, %invoke.cont275, %invoke.cont272, %invoke.cont271, %invoke.cont269, %invoke.cont268, %invoke.cont266, %invoke.cont264, %invoke.cont261
  %390 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %391 = extractvalue { i8*, i32 } %390, 0
  store i8* %391, i8** %exn.slot
  %392 = extractvalue { i8*, i32 } %390, 1
  store i32 %392, i32* %ehselector.slot
  br label %ehcleanup510

lpad318:                                          ; preds = %invoke.cont324, %invoke.cont321, %invoke.cont319, %invoke.cont316
  %393 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %394 = extractvalue { i8*, i32 } %393, 0
  store i8* %394, i8** %exn.slot
  %395 = extractvalue { i8*, i32 } %393, 1
  store i32 %395, i32* %ehselector.slot
  invoke void @_ZN4llvm4UserdlEPv(i8* %call317)
          to label %invoke.cont327 unwind label %terminate.lpad

invoke.cont327:                                   ; preds = %lpad318
  br label %ehcleanup510

lpad331:                                          ; preds = %invoke.cont337, %invoke.cont334, %invoke.cont332, %invoke.cont329
  %396 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %397 = extractvalue { i8*, i32 } %396, 0
  store i8* %397, i8** %exn.slot
  %398 = extractvalue { i8*, i32 } %396, 1
  store i32 %398, i32* %ehselector.slot
  invoke void @_ZN4llvm4UserdlEPv(i8* %call330)
          to label %invoke.cont340 unwind label %terminate.lpad

invoke.cont340:                                   ; preds = %lpad331
  br label %ehcleanup510

lpad344:                                          ; preds = %invoke.cont342
  %399 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %400 = extractvalue { i8*, i32 } %399, 0
  store i8* %400, i8** %exn.slot
  %401 = extractvalue { i8*, i32 } %399, 1
  store i32 %401, i32* %ehselector.slot
  invoke void @_ZN4llvm4UserdlEPv(i8* %call343)
          to label %invoke.cont347 unwind label %terminate.lpad

invoke.cont347:                                   ; preds = %lpad344
  br label %ehcleanup510

lpad351:                                          ; preds = %invoke.cont349
  %402 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %403 = extractvalue { i8*, i32 } %402, 0
  store i8* %403, i8** %exn.slot
  %404 = extractvalue { i8*, i32 } %402, 1
  store i32 %404, i32* %ehselector.slot
  invoke void @_ZN4llvm4UserdlEPv(i8* %call350)
          to label %invoke.cont354 unwind label %terminate.lpad

invoke.cont354:                                   ; preds = %lpad351
  br label %ehcleanup510

lpad358:                                          ; preds = %invoke.cont356
  %405 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %406 = extractvalue { i8*, i32 } %405, 0
  store i8* %406, i8** %exn.slot
  %407 = extractvalue { i8*, i32 } %405, 1
  store i32 %407, i32* %ehselector.slot
  invoke void @_ZN4llvm4UserdlEPv(i8* %call357)
          to label %invoke.cont361 unwind label %terminate.lpad

invoke.cont361:                                   ; preds = %lpad358
  br label %ehcleanup510

lpad366:                                          ; preds = %invoke.cont367, %invoke.cont363
  %408 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %409 = extractvalue { i8*, i32 } %408, 0
  store i8* %409, i8** %exn.slot
  %410 = extractvalue { i8*, i32 } %408, 1
  store i32 %410, i32* %ehselector.slot
  invoke void @_ZN4llvm4UserdlEPv(i8* %call364)
          to label %invoke.cont370 unwind label %terminate.lpad

invoke.cont370:                                   ; preds = %lpad366
  br label %ehcleanup510

lpad375:                                          ; preds = %invoke.cont373
  %411 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %412 = extractvalue { i8*, i32 } %411, 0
  store i8* %412, i8** %exn.slot
  %413 = extractvalue { i8*, i32 } %411, 1
  store i32 %413, i32* %ehselector.slot
  invoke void @_ZN4llvm4UserdlEPv(i8* %call374)
          to label %invoke.cont378 unwind label %terminate.lpad

invoke.cont378:                                   ; preds = %lpad375
  br label %ehcleanup510

lpad384:                                          ; preds = %invoke.cont382
  %414 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %415 = extractvalue { i8*, i32 } %414, 0
  store i8* %415, i8** %exn.slot
  %416 = extractvalue { i8*, i32 } %414, 1
  store i32 %416, i32* %ehselector.slot
  invoke void @_ZN4llvm4UserdlEPv(i8* %call383)
          to label %invoke.cont387 unwind label %terminate.lpad

invoke.cont387:                                   ; preds = %lpad384
  br label %ehcleanup510

lpad391:                                          ; preds = %invoke.cont389
  %417 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %418 = extractvalue { i8*, i32 } %417, 0
  store i8* %418, i8** %exn.slot
  %419 = extractvalue { i8*, i32 } %417, 1
  store i32 %419, i32* %ehselector.slot
  invoke void @_ZN4llvm4UserdlEPv(i8* %call390)
          to label %invoke.cont394 unwind label %terminate.lpad

invoke.cont394:                                   ; preds = %lpad391
  br label %ehcleanup510

lpad398:                                          ; preds = %invoke.cont396
  %420 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %421 = extractvalue { i8*, i32 } %420, 0
  store i8* %421, i8** %exn.slot
  %422 = extractvalue { i8*, i32 } %420, 1
  store i32 %422, i32* %ehselector.slot
  invoke void @_ZN4llvm4UserdlEPv(i8* %call397)
          to label %invoke.cont401 unwind label %terminate.lpad

invoke.cont401:                                   ; preds = %lpad398
  br label %ehcleanup510

lpad409:                                          ; preds = %invoke.cont435, %invoke.cont434, %invoke.cont433, %invoke.cont431, %invoke.cont430, %invoke.cont427, %invoke.cont425, %invoke.cont423, %invoke.cont422, %invoke.cont421, %invoke.cont420, %invoke.cont419, %invoke.cont417, %invoke.cont416, %invoke.cont414, %invoke.cont412, %invoke.cont410, %invoke.cont407
  %423 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %424 = extractvalue { i8*, i32 } %423, 0
  store i8* %424, i8** %exn.slot
  %425 = extractvalue { i8*, i32 } %423, 1
  store i32 %425, i32* %ehselector.slot
  invoke void @_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev(%"class.std::vector.72"* %int32_call_params)
          to label %invoke.cont441 unwind label %terminate.lpad

invoke.cont441:                                   ; preds = %lpad409
  br label %ehcleanup510

lpad450:                                          ; preds = %invoke.cont456, %invoke.cont453, %invoke.cont451, %invoke.cont448
  %426 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %427 = extractvalue { i8*, i32 } %426, 0
  store i8* %427, i8** %exn.slot
  %428 = extractvalue { i8*, i32 } %426, 1
  store i32 %428, i32* %ehselector.slot
  invoke void @_ZN4llvm4UserdlEPv(i8* %call449)
          to label %invoke.cont459 unwind label %terminate.lpad

invoke.cont459:                                   ; preds = %lpad450
  br label %ehcleanup510

lpad463:                                          ; preds = %invoke.cont461
  %429 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %430 = extractvalue { i8*, i32 } %429, 0
  store i8* %430, i8** %exn.slot
  %431 = extractvalue { i8*, i32 } %429, 1
  store i32 %431, i32* %ehselector.slot
  invoke void @_ZN4llvm4UserdlEPv(i8* %call462)
          to label %invoke.cont466 unwind label %terminate.lpad

invoke.cont466:                                   ; preds = %lpad463
  br label %ehcleanup510

lpad469:                                          ; preds = %invoke.cont501, %invoke.cont482, %invoke.cont481, %invoke.cont480, %invoke.cont479, %invoke.cont477, %invoke.cont476, %invoke.cont474, %invoke.cont472, %invoke.cont470, %invoke.cont467
  %432 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %433 = extractvalue { i8*, i32 } %432, 0
  store i8* %433, i8** %exn.slot
  %434 = extractvalue { i8*, i32 } %432, 1
  store i32 %434, i32* %ehselector.slot
  br label %ehcleanup507

lpad485:                                          ; preds = %invoke.cont499, %invoke.cont498, %invoke.cont497, %invoke.cont496, %invoke.cont495, %invoke.cont493, %invoke.cont492, %invoke.cont490, %invoke.cont488, %invoke.cont486, %invoke.cont483
  %435 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %436 = extractvalue { i8*, i32 } %435, 0
  store i8* %436, i8** %exn.slot
  %437 = extractvalue { i8*, i32 } %435, 1
  store i32 %437, i32* %ehselector.slot
  invoke void @_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev(%"class.std::vector.72"* %int32_call1_params)
          to label %invoke.cont505 unwind label %terminate.lpad

invoke.cont505:                                   ; preds = %lpad485
  br label %ehcleanup507

ehcleanup507:                                     ; preds = %invoke.cont505, %lpad469
  invoke void @_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev(%"class.std::vector.72"* %int32_call_28_params)
          to label %invoke.cont508 unwind label %terminate.lpad

invoke.cont508:                                   ; preds = %ehcleanup507
  br label %ehcleanup510

invoke.cont509:                                   ; preds = %invoke.cont506
  invoke void @_ZNSt6vectorIPN4llvm4TypeESaIS2_EED2Ev(%"class.std::vector.56"* %FuncTy_8_args)
          to label %invoke.cont512 unwind label %lpad39

ehcleanup510:                                     ; preds = %invoke.cont508, %invoke.cont466, %invoke.cont459, %invoke.cont441, %invoke.cont401, %invoke.cont394, %invoke.cont387, %invoke.cont378, %invoke.cont370, %invoke.cont361, %invoke.cont354, %invoke.cont347, %invoke.cont340, %invoke.cont327, %lpad263
  invoke void @_ZNSt6vectorIPN4llvm8ConstantESaIS2_EED2Ev(%"class.std::vector.66"* %const_ptr_14_indices)
          to label %invoke.cont511 unwind label %terminate.lpad

invoke.cont511:                                   ; preds = %ehcleanup510
  br label %ehcleanup513

invoke.cont512:                                   ; preds = %invoke.cont509
  invoke void @_ZNSt6vectorIPN4llvm4TypeESaIS2_EED2Ev(%"class.std::vector.56"* %FuncTy_5_args)
          to label %invoke.cont515 unwind label %lpad10

ehcleanup513:                                     ; preds = %invoke.cont511, %invoke.cont260, %invoke.cont248, %invoke.cont236, %invoke.cont224, %invoke.cont205, %invoke.cont194, %invoke.cont149, %invoke.cont102, %lpad56
  invoke void @_ZNSt6vectorIPN4llvm4TypeESaIS2_EED2Ev(%"class.std::vector.56"* %FuncTy_8_args)
          to label %invoke.cont514 unwind label %terminate.lpad

invoke.cont514:                                   ; preds = %ehcleanup513
  br label %ehcleanup516

invoke.cont515:                                   ; preds = %invoke.cont512
  call void @_ZNSt6vectorIPN4llvm4TypeESaIS2_EED2Ev(%"class.std::vector.56"* %FuncTy_2_args)
  ret %"class.llvm::Module"* %368

ehcleanup516:                                     ; preds = %invoke.cont514, %lpad39
  invoke void @_ZNSt6vectorIPN4llvm4TypeESaIS2_EED2Ev(%"class.std::vector.56"* %FuncTy_5_args)
          to label %invoke.cont517 unwind label %terminate.lpad

invoke.cont517:                                   ; preds = %ehcleanup516
  br label %ehcleanup518

ehcleanup518:                                     ; preds = %invoke.cont517, %lpad10
  invoke void @_ZNSt6vectorIPN4llvm4TypeESaIS2_EED2Ev(%"class.std::vector.56"* %FuncTy_2_args)
          to label %invoke.cont519 unwind label %terminate.lpad

invoke.cont519:                                   ; preds = %ehcleanup518
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont519, %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val520 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val520

terminate.lpad:                                   ; preds = %ehcleanup518, %ehcleanup516, %ehcleanup513, %ehcleanup510, %ehcleanup507, %lpad485, %lpad463, %lpad450, %lpad409, %lpad398, %lpad391, %lpad384, %lpad375, %lpad366, %lpad358, %lpad351, %lpad344, %lpad331, %lpad318, %lpad255, %lpad243, %lpad231, %lpad219, %lpad201, %ehcleanup193, %lpad174, %ehcleanup148, %lpad126, %ehcleanup, %lpad82
  %438 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %439 = extractvalue { i8*, i32 } %438, 0
  call void @__clang_call_terminate(i8* %439) #13
  unreachable
}

declare zeroext i1 @_ZN4llvm12verifyModuleERKNS_6ModuleENS_21VerifierFailureActionEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.llvm::Module"*, i32, %"class.std::__cxx11::basic_string"*) #1

declare void @_ZN4llvm6legacy11PassManagerC1Ev(%"class.llvm::legacy::PassManager"*) #1

declare void @_ZN4llvm6legacy11PassManager3addEPNS_4PassE(%"class.llvm::legacy::PassManager"*, %"class.llvm::Pass"*) #1

declare %"class.llvm::ModulePass"* @_ZN4llvm21createPrintModulePassEPNS_11raw_ostreamEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.llvm::raw_ostream"*, i1 zeroext, %"class.std::__cxx11::basic_string"*) #1

declare %"class.llvm::raw_ostream"* @_ZN4llvm4outsEv() #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"*, i8*, %"class.std::allocator"*) #1

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator"*) #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"*) #1

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #3 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #7
  call void @_ZSt9terminatev() #13
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator"*) #2

declare zeroext i1 @_ZN4llvm6legacy11PassManager3runERNS_6ModuleE(%"class.llvm::legacy::PassManager"*, %"class.llvm::Module"*) #1

declare void @_ZN4llvm6legacy11PassManagerD1Ev(%"class.llvm::legacy::PassManager"*) #1

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #4

declare void @_ZN4llvm6ModuleC1ENS_9StringRefERNS_11LLVMContextE(%"class.llvm::Module"*, i8*, i64, %"class.llvm::LLVMContext"*) #1

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4llvm9StringRefC2EPKc(%"class.llvm::StringRef"* %this, i8* %Str) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::StringRef"*, align 8
  %Str.addr = alloca i8*, align 8
  store %"class.llvm::StringRef"* %this, %"class.llvm::StringRef"** %this.addr, align 8
  store i8* %Str, i8** %Str.addr, align 8
  %this1 = load %"class.llvm::StringRef"** %this.addr
  %Data = getelementptr inbounds %"class.llvm::StringRef"* %this1, i32 0, i32 0
  %0 = load i8** %Str.addr, align 8
  store i8* %0, i8** %Data, align 8
  %1 = load i8** %Str.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([56 x i8]* @.str50, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8]* @.str51, i32 0, i32 0), i32 78, i8* getelementptr inbounds ([41 x i8]* @__PRETTY_FUNCTION__._ZN4llvm9StringRefC2EPKc, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load i8** %Str.addr, align 8
  %call = call i64 @strlen(i8* %3) #16
  %Length = getelementptr inbounds %"class.llvm::StringRef"* %this1, i32 0, i32 1
  store i64 %call, i64* %Length, align 8
  ret void
}

declare %"class.llvm::LLVMContext"* @_ZN4llvm16getGlobalContextEv() #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #6

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm6Module13setDataLayoutENS_9StringRefE(%"class.llvm::Module"* %this, i8* %DL.coerce0, i64 %DL.coerce1) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Module"*, align 8
  %DL = alloca %"class.llvm::StringRef", align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.llvm::Module"* %this, %"class.llvm::Module"** %this.addr, align 8
  %0 = bitcast %"class.llvm::StringRef"* %DL to { i8*, i64 }*
  %1 = getelementptr { i8*, i64 }* %0, i32 0, i32 0
  store i8* %DL.coerce0, i8** %1
  %2 = getelementptr { i8*, i64 }* %0, i32 0, i32 1
  store i64 %DL.coerce1, i64* %2
  %this1 = load %"class.llvm::Module"** %this.addr
  %DataLayout = getelementptr inbounds %"class.llvm::Module"* %this1, i32 0, i32 10
  call void @_ZNK4llvm9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(%"class.std::__cxx11::basic_string"* sret %ref.tmp, %"class.llvm::StringRef"* %DL)
  %call = invoke %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %DataLayout, %"class.std::__cxx11::basic_string"* %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp)
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont2
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3

terminate.lpad:                                   ; preds = %lpad
  %6 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #13
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm6Module15setTargetTripleENS_9StringRefE(%"class.llvm::Module"* %this, i8* %T.coerce0, i64 %T.coerce1) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Module"*, align 8
  %T = alloca %"class.llvm::StringRef", align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.llvm::Module"* %this, %"class.llvm::Module"** %this.addr, align 8
  %0 = bitcast %"class.llvm::StringRef"* %T to { i8*, i64 }*
  %1 = getelementptr { i8*, i64 }* %0, i32 0, i32 0
  store i8* %T.coerce0, i8** %1
  %2 = getelementptr { i8*, i64 }* %0, i32 0, i32 1
  store i64 %T.coerce1, i64* %2
  %this1 = load %"class.llvm::Module"** %this.addr
  %TargetTriple = getelementptr inbounds %"class.llvm::Module"* %this1, i32 0, i32 9
  call void @_ZNK4llvm9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(%"class.std::__cxx11::basic_string"* sret %ref.tmp, %"class.llvm::StringRef"* %T)
  %call = invoke %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %TargetTriple, %"class.std::__cxx11::basic_string"* %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp)
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont2
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3

terminate.lpad:                                   ; preds = %lpad
  %6 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #13
  unreachable
}

declare %"class.llvm::ArrayType"* @_ZN4llvm9ArrayType3getEPNS_4TypeEm(%"class.llvm::Type"*, i64) #1

declare %"class.llvm::IntegerType"* @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(%"class.llvm::LLVMContext"*, i32) #1

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::LLVMContext"* @_ZNK4llvm6Module10getContextEv(%"class.llvm::Module"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Module"*, align 8
  store %"class.llvm::Module"* %this, %"class.llvm::Module"** %this.addr, align 8
  %this1 = load %"class.llvm::Module"** %this.addr
  %Context = getelementptr inbounds %"class.llvm::Module"* %this1, i32 0, i32 0
  %ref = load %"class.llvm::LLVMContext"** %Context, align 8
  ret %"class.llvm::LLVMContext"* %ref
}

declare %"class.llvm::PointerType"* @_ZN4llvm11PointerType3getEPNS_4TypeEj(%"class.llvm::Type"*, i32) #1

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIPN4llvm4TypeESaIS2_EEC2Ev(%"class.std::vector.56"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.56"*, align 8
  store %"class.std::vector.56"* %this, %"class.std::vector.56"** %this.addr, align 8
  %this1 = load %"class.std::vector.56"** %this.addr
  %0 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  call void @_ZNSt12_Vector_baseIPN4llvm4TypeESaIS2_EEC2Ev(%"struct.std::_Vector_base.57"* %0)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backERKS2_(%"class.std::vector.56"* %this, %"class.llvm::Type"** %__x) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.56"*, align 8
  %__x.addr = alloca %"class.llvm::Type"**, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.82", align 8
  store %"class.std::vector.56"* %this, %"class.std::vector.56"** %this.addr, align 8
  store %"class.llvm::Type"** %__x, %"class.llvm::Type"*** %__x.addr, align 8
  %this1 = load %"class.std::vector.56"** %this.addr
  %0 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.57"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %"class.llvm::Type"*** %_M_finish, align 8
  %2 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.57"* %2, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %3 = load %"class.llvm::Type"*** %_M_end_of_storage, align 8
  %cmp = icmp ne %"class.llvm::Type"** %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.57"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl3 to %"class.std::allocator.58"*
  %6 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.57"* %6, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  %7 = load %"class.llvm::Type"*** %_M_finish5, align 8
  %8 = load %"class.llvm::Type"*** %__x.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm4TypeEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator.58"* %5, %"class.llvm::Type"** %7, %"class.llvm::Type"** %8)
  %9 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.57"* %9, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %10 = load %"class.llvm::Type"*** %_M_finish7, align 8
  %incdec.ptr = getelementptr inbounds %"class.llvm::Type"** %10, i32 1
  store %"class.llvm::Type"** %incdec.ptr, %"class.llvm::Type"*** %_M_finish7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call %"class.llvm::Type"** @_ZNSt6vectorIPN4llvm4TypeESaIS2_EE3endEv(%"class.std::vector.56"* %this1)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.82"* %agg.tmp, i32 0, i32 0
  store %"class.llvm::Type"** %call, %"class.llvm::Type"*** %coerce.dive
  %11 = load %"class.llvm::Type"*** %__x.addr, align 8
  %coerce.dive8 = getelementptr %"class.__gnu_cxx::__normal_iterator.82"* %agg.tmp, i32 0, i32 0
  %12 = load %"class.llvm::Type"*** %coerce.dive8
  call void @_ZNSt6vectorIPN4llvm4TypeESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_(%"class.std::vector.56"* %this1, %"class.llvm::Type"** %12, %"class.llvm::Type"** %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %"class.llvm::FunctionType"* @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(%"class.llvm::Type"*, %"class.llvm::Type"**, i64, i1 zeroext) #1

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm8ArrayRefIPNS_4TypeEEC2ISaIS2_EEERKSt6vectorIS2_T_E(%"class.llvm::ArrayRef"* %this, %"class.std::vector.56"* %Vec) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ArrayRef"*, align 8
  %Vec.addr = alloca %"class.std::vector.56"*, align 8
  store %"class.llvm::ArrayRef"* %this, %"class.llvm::ArrayRef"** %this.addr, align 8
  store %"class.std::vector.56"* %Vec, %"class.std::vector.56"** %Vec.addr, align 8
  %this1 = load %"class.llvm::ArrayRef"** %this.addr
  %Data = getelementptr inbounds %"class.llvm::ArrayRef"* %this1, i32 0, i32 0
  %0 = load %"class.std::vector.56"** %Vec.addr, align 8
  %call = call zeroext i1 @_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE5emptyEv(%"class.std::vector.56"* %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %"class.std::vector.56"** %Vec.addr, align 8
  %call2 = call %"class.llvm::Type"** @_ZNKSt6vectorIPN4llvm4TypeESaIS2_EEixEm(%"class.std::vector.56"* %1, i64 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"class.llvm::Type"** [ null, %cond.true ], [ %call2, %cond.false ]
  store %"class.llvm::Type"** %cond, %"class.llvm::Type"*** %Data, align 8
  %Length = getelementptr inbounds %"class.llvm::ArrayRef"* %this1, i32 0, i32 1
  %2 = load %"class.std::vector.56"** %Vec.addr, align 8
  %call3 = call i64 @_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE4sizeEv(%"class.std::vector.56"* %2)
  store i64 %call3, i64* %Length, align 8
  ret void
}

declare %"class.llvm::Function"* @_ZNK4llvm6Module11getFunctionENS_9StringRefE(%"class.llvm::Module"*, i8*, i64) #1

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Function"* @_ZN4llvm8Function6CreateEPNS_12FunctionTypeENS_11GlobalValue12LinkageTypesERKNS_5TwineEPNS_6ModuleE(%"class.llvm::FunctionType"* %Ty, i32 %Linkage, %"class.llvm::Twine"* %N, %"class.llvm::Module"* %M) #0 align 2 {
entry:
  %Ty.addr = alloca %"class.llvm::FunctionType"*, align 8
  %Linkage.addr = alloca i32, align 4
  %N.addr = alloca %"class.llvm::Twine"*, align 8
  %M.addr = alloca %"class.llvm::Module"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.llvm::FunctionType"* %Ty, %"class.llvm::FunctionType"** %Ty.addr, align 8
  store i32 %Linkage, i32* %Linkage.addr, align 4
  store %"class.llvm::Twine"* %N, %"class.llvm::Twine"** %N.addr, align 8
  store %"class.llvm::Module"* %M, %"class.llvm::Module"** %M.addr, align 8
  %call = call i8* @_ZN4llvm4UsernwEmj(i64 160, i32 0)
  %0 = bitcast i8* %call to %"class.llvm::Function"*
  %1 = load %"class.llvm::FunctionType"** %Ty.addr, align 8
  %2 = load i32* %Linkage.addr, align 4
  %3 = load %"class.llvm::Twine"** %N.addr, align 8
  %4 = load %"class.llvm::Module"** %M.addr, align 8
  invoke void @_ZN4llvm8FunctionC1EPNS_12FunctionTypeENS_11GlobalValue12LinkageTypesERKNS_5TwineEPNS_6ModuleE(%"class.llvm::Function"* %0, %"class.llvm::FunctionType"* %1, i32 %2, %"class.llvm::Twine"* %3, %"class.llvm::Module"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret %"class.llvm::Function"* %0

lpad:                                             ; preds = %entry
  %5 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot
  invoke void @_ZN4llvm4UserdlEPvj(i8* %call, i32 0)
          to label %invoke.cont1 unwind label %terminate.lpad

invoke.cont1:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont1
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2

terminate.lpad:                                   ; preds = %lpad
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  call void @__clang_call_terminate(i8* %9) #13
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm5TwineC2EPKc(%"class.llvm::Twine"* %this, i8* %Str) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Twine"*, align 8
  %Str.addr = alloca i8*, align 8
  store %"class.llvm::Twine"* %this, %"class.llvm::Twine"** %this.addr, align 8
  store i8* %Str, i8** %Str.addr, align 8
  %this1 = load %"class.llvm::Twine"** %this.addr
  %LHS = getelementptr inbounds %"class.llvm::Twine"* %this1, i32 0, i32 0
  %RHS = getelementptr inbounds %"class.llvm::Twine"* %this1, i32 0, i32 1
  %RHSKind = getelementptr inbounds %"class.llvm::Twine"* %this1, i32 0, i32 3
  store i8 1, i8* %RHSKind, align 1
  %0 = load i8** %Str.addr, align 8
  %arrayidx = getelementptr inbounds i8* %0, i64 0
  %1 = load i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8** %Str.addr, align 8
  %LHS2 = getelementptr inbounds %"class.llvm::Twine"* %this1, i32 0, i32 0
  %cString = bitcast %"union.llvm::Twine::Child"* %LHS2 to i8**
  store i8* %2, i8** %cString, align 8
  %LHSKind = getelementptr inbounds %"class.llvm::Twine"* %this1, i32 0, i32 2
  store i8 3, i8* %LHSKind, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %LHSKind3 = getelementptr inbounds %"class.llvm::Twine"* %this1, i32 0, i32 2
  store i8 1, i8* %LHSKind3, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = call zeroext i1 @_ZNK4llvm5Twine7isValidEv(%"class.llvm::Twine"* %this1)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8]* @.str48, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8]* @.str49, i32 0, i32 0), i32 271, i8* getelementptr inbounds ([33 x i8]* @__PRETTY_FUNCTION__._ZN4llvm5TwineC2EPKc, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm8Function14setCallingConvENS_11CallingConv2IDE(%"class.llvm::Function"* %this, i32 %CC) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Function"*, align 8
  %CC.addr = alloca i32, align 4
  store %"class.llvm::Function"* %this, %"class.llvm::Function"** %this.addr, align 8
  store i32 %CC, i32* %CC.addr, align 4
  %this1 = load %"class.llvm::Function"** %this.addr
  %0 = bitcast %"class.llvm::Function"* %this1 to %"class.llvm::Value"*
  %call = call zeroext i16 @_ZNK4llvm5Value24getSubclassDataFromValueEv(%"class.llvm::Value"* %0)
  %conv = zext i16 %call to i32
  %and = and i32 %conv, 3
  %1 = load i32* %CC.addr, align 4
  %shl = shl i32 %1, 2
  %or = or i32 %and, %shl
  %conv2 = trunc i32 %or to i16
  call void @_ZN4llvm8Function20setValueSubclassDataEt(%"class.llvm::Function"* %this1, i16 zeroext %conv2)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4llvm12AttributeSetC2Ev(%"class.llvm::AttributeSet"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::AttributeSet"*, align 8
  store %"class.llvm::AttributeSet"* %this, %"class.llvm::AttributeSet"** %this.addr, align 8
  %this1 = load %"class.llvm::AttributeSet"** %this.addr
  %pImpl = getelementptr inbounds %"class.llvm::AttributeSet"* %this1, i32 0, i32 0
  store %"class.llvm::AttributeSetImpl"* null, %"class.llvm::AttributeSetImpl"** %pImpl, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm11SmallVectorINS_12AttributeSetELj4EEC2Ev(%"class.llvm::SmallVector"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::SmallVector"*, align 8
  store %"class.llvm::SmallVector"* %this, %"class.llvm::SmallVector"** %this.addr, align 8
  %this1 = load %"class.llvm::SmallVector"** %this.addr
  %0 = bitcast %"class.llvm::SmallVector"* %this1 to %"class.llvm::SmallVectorImpl"*
  call void @_ZN4llvm15SmallVectorImplINS_12AttributeSetEEC2Ej(%"class.llvm::SmallVectorImpl"* %0, i32 4)
  %Storage = getelementptr inbounds %"class.llvm::SmallVector"* %this1, i32 0, i32 1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm11AttrBuilderC2Ev(%"class.llvm::AttrBuilder"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::AttrBuilder"*, align 8
  store %"class.llvm::AttrBuilder"* %this, %"class.llvm::AttrBuilder"** %this.addr, align 8
  %this1 = load %"class.llvm::AttrBuilder"** %this.addr
  %Attrs = getelementptr inbounds %"class.llvm::AttrBuilder"* %this1, i32 0, i32 0
  call void @_ZNSt6bitsetILm38EEC2Em(%"class.std::bitset"* %Attrs, i64 0)
  %TargetDepAttrs = getelementptr inbounds %"class.llvm::AttrBuilder"* %this1, i32 0, i32 1
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2Ev(%"class.std::map"* %TargetDepAttrs)
  %Alignment = getelementptr inbounds %"class.llvm::AttrBuilder"* %this1, i32 0, i32 2
  store i64 0, i64* %Alignment, align 8
  %StackAlignment = getelementptr inbounds %"class.llvm::AttrBuilder"* %this1, i32 0, i32 3
  store i64 0, i64* %StackAlignment, align 8
  ret void
}

declare %"class.llvm::AttrBuilder"* @_ZN4llvm11AttrBuilder12addAttributeENS_9Attribute8AttrKindE(%"class.llvm::AttrBuilder"*, i32) #1

declare %"class.llvm::AttributeSetImpl"* @_ZN4llvm12AttributeSet3getERNS_11LLVMContextEjRNS_11AttrBuilderE(%"class.llvm::LLVMContext"*, i32, %"class.llvm::AttrBuilder"*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZN4llvm11AttrBuilderD2Ev(%"class.llvm::AttrBuilder"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.llvm::AttrBuilder"*, align 8
  store %"class.llvm::AttrBuilder"* %this, %"class.llvm::AttrBuilder"** %this.addr, align 8
  %this1 = load %"class.llvm::AttrBuilder"** %this.addr
  %TargetDepAttrs = getelementptr inbounds %"class.llvm::AttrBuilder"* %this1, i32 0, i32 1
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(%"class.std::map"* %TargetDepAttrs)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINS_12AttributeSetELb1EE9push_backERKS1_(%"class.llvm::SmallVectorTemplateBase"* %this, %"class.llvm::AttributeSet"* %Elt) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::SmallVectorTemplateBase"*, align 8
  %Elt.addr = alloca %"class.llvm::AttributeSet"*, align 8
  store %"class.llvm::SmallVectorTemplateBase"* %this, %"class.llvm::SmallVectorTemplateBase"** %this.addr, align 8
  store %"class.llvm::AttributeSet"* %Elt, %"class.llvm::AttributeSet"** %Elt.addr, align 8
  %this1 = load %"class.llvm::SmallVectorTemplateBase"** %this.addr
  %0 = bitcast %"class.llvm::SmallVectorTemplateBase"* %this1 to %"class.llvm::SmallVectorBase"*
  %EndX = getelementptr inbounds %"class.llvm::SmallVectorBase"* %0, i32 0, i32 1
  %1 = load i8** %EndX, align 8
  %2 = bitcast %"class.llvm::SmallVectorTemplateBase"* %this1 to %"class.llvm::SmallVectorBase"*
  %CapacityX = getelementptr inbounds %"class.llvm::SmallVectorBase"* %2, i32 0, i32 2
  %3 = load i8** %CapacityX, align 8
  %cmp = icmp ult i8* %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %Retry

Retry:                                            ; preds = %if.end, %if.then
  %4 = bitcast %"class.llvm::SmallVectorTemplateBase"* %this1 to %"class.llvm::SmallVectorTemplateCommon"*
  %call = call %"class.llvm::AttributeSet"* @_ZN4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE3endEv(%"class.llvm::SmallVectorTemplateCommon"* %4)
  %5 = bitcast %"class.llvm::AttributeSet"* %call to i8*
  %6 = load %"class.llvm::AttributeSet"** %Elt.addr, align 8
  %7 = bitcast %"class.llvm::AttributeSet"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.llvm::SmallVectorTemplateBase"* %this1 to %"class.llvm::SmallVectorTemplateCommon"*
  %9 = bitcast %"class.llvm::SmallVectorTemplateBase"* %this1 to %"class.llvm::SmallVectorTemplateCommon"*
  %call2 = call %"class.llvm::AttributeSet"* @_ZN4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE3endEv(%"class.llvm::SmallVectorTemplateCommon"* %9)
  %add.ptr = getelementptr inbounds %"class.llvm::AttributeSet"* %call2, i64 1
  call void @_ZN4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE6setEndEPS1_(%"class.llvm::SmallVectorTemplateCommon"* %8, %"class.llvm::AttributeSet"* %add.ptr)
  ret void

if.end:                                           ; preds = %entry
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_12AttributeSetELb1EE4growEm(%"class.llvm::SmallVectorTemplateBase"* %this1, i64 0)
  br label %Retry
}

declare %"class.llvm::AttributeSetImpl"* @_ZN4llvm12AttributeSet3getERNS_11LLVMContextENS_8ArrayRefIS0_EE(%"class.llvm::LLVMContext"*, %"class.llvm::AttributeSet"*, i64) #1

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm8ArrayRefINS_12AttributeSetEEC2IvEERKNS_25SmallVectorTemplateCommonIS1_T_EE(%"class.llvm::ArrayRef.64"* %this, %"class.llvm::SmallVectorTemplateCommon"* %Vec) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ArrayRef.64"*, align 8
  %Vec.addr = alloca %"class.llvm::SmallVectorTemplateCommon"*, align 8
  store %"class.llvm::ArrayRef.64"* %this, %"class.llvm::ArrayRef.64"** %this.addr, align 8
  store %"class.llvm::SmallVectorTemplateCommon"* %Vec, %"class.llvm::SmallVectorTemplateCommon"** %Vec.addr, align 8
  %this1 = load %"class.llvm::ArrayRef.64"** %this.addr
  %Data = getelementptr inbounds %"class.llvm::ArrayRef.64"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::SmallVectorTemplateCommon"** %Vec.addr, align 8
  %call = call %"class.llvm::AttributeSet"* @_ZNK4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE4dataEv(%"class.llvm::SmallVectorTemplateCommon"* %0)
  store %"class.llvm::AttributeSet"* %call, %"class.llvm::AttributeSet"** %Data, align 8
  %Length = getelementptr inbounds %"class.llvm::ArrayRef.64"* %this1, i32 0, i32 1
  %1 = load %"class.llvm::SmallVectorTemplateCommon"** %Vec.addr, align 8
  %call2 = call i64 @_ZNK4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE4sizeEv(%"class.llvm::SmallVectorTemplateCommon"* %1)
  store i64 %call2, i64* %Length, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZN4llvm11SmallVectorINS_12AttributeSetELj4EED2Ev(%"class.llvm::SmallVector"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.llvm::SmallVector"*, align 8
  store %"class.llvm::SmallVector"* %this, %"class.llvm::SmallVector"** %this.addr, align 8
  %this1 = load %"class.llvm::SmallVector"** %this.addr
  %0 = bitcast %"class.llvm::SmallVector"* %this1 to %"class.llvm::SmallVectorImpl"*
  call void @_ZN4llvm15SmallVectorImplINS_12AttributeSetEED2Ev(%"class.llvm::SmallVectorImpl"* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4llvm8Function13setAttributesENS_12AttributeSetE(%"class.llvm::Function"* %this, %"class.llvm::AttributeSetImpl"* %attrs.coerce) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Function"*, align 8
  %attrs = alloca %"class.llvm::AttributeSet", align 8
  store %"class.llvm::Function"* %this, %"class.llvm::Function"** %this.addr, align 8
  %coerce.dive = getelementptr %"class.llvm::AttributeSet"* %attrs, i32 0, i32 0
  store %"class.llvm::AttributeSetImpl"* %attrs.coerce, %"class.llvm::AttributeSetImpl"** %coerce.dive
  %this1 = load %"class.llvm::Function"** %this.addr
  %AttributeSets = getelementptr inbounds %"class.llvm::Function"* %this1, i32 0, i32 5
  %0 = bitcast %"class.llvm::AttributeSet"* %AttributeSets to i8*
  %1 = bitcast %"class.llvm::AttributeSet"* %attrs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr i8* @_ZN4llvm14GlobalVariablenwEm(i64 %s) #0 align 2 {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, i64* %s.addr, align 8
  %0 = load i64* %s.addr, align 8
  %call = call i8* @_ZN4llvm4UsernwEmj(i64 %0, i32 1)
  ret i8* %call
}

declare void @_ZN4llvm14GlobalVariableC1ERNS_6ModuleEPNS_4TypeEbNS_11GlobalValue12LinkageTypesEPNS_8ConstantERKNS_5TwineEPS0_NS0_15ThreadLocalModeEjb(%"class.llvm::GlobalVariable"*, %"class.llvm::Module"*, %"class.llvm::Type"*, i1 zeroext, i32, %"class.llvm::Constant"*, %"class.llvm::Twine"*, %"class.llvm::GlobalVariable"*, i32, i32, i1 zeroext) #1

declare void @_ZN4llvm4UserdlEPv(i8*) #1

declare void @_ZN4llvm11GlobalValue12setAlignmentEj(%"class.llvm::GlobalValue"*, i32) #1

declare %"class.llvm::Constant"* @_ZN4llvm17ConstantDataArray9getStringERNS_11LLVMContextENS_9StringRefEb(%"class.llvm::LLVMContext"*, i8*, i64, i1 zeroext) #1

declare %"class.llvm::ConstantInt"* @_ZN4llvm11ConstantInt3getERNS_11LLVMContextERKNS_5APIntE(%"class.llvm::LLVMContext"*, %"class.llvm::APInt"*) #1

declare void @_ZN4llvm5APIntC1EjNS_9StringRefEh(%"class.llvm::APInt"*, i32, i8*, i64, i8 zeroext) #1

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm5APIntD2Ev(%"class.llvm::APInt"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::APInt"*, align 8
  store %"class.llvm::APInt"* %this, %"class.llvm::APInt"** %this.addr, align 8
  %this1 = load %"class.llvm::APInt"** %this.addr
  %call = call zeroext i1 @_ZNK4llvm5APInt12needsCleanupEv(%"class.llvm::APInt"* %this1)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %"class.llvm::APInt"* %this1, i32 0, i32 1
  %pVal = bitcast %union.anon.65* %0 to i64**
  %1 = load i64** %pVal, align 8
  %isnull = icmp eq i64* %1, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %if.then
  %2 = bitcast i64* %1 to i8*
  call void @_ZdaPv(i8* %2) #15
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %if.then
  br label %if.end

if.end:                                           ; preds = %delete.end, %entry
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIPN4llvm8ConstantESaIS2_EEC2Ev(%"class.std::vector.66"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.66"*, align 8
  store %"class.std::vector.66"* %this, %"class.std::vector.66"** %this.addr, align 8
  %this1 = load %"class.std::vector.66"** %this.addr
  %0 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  call void @_ZNSt12_Vector_baseIPN4llvm8ConstantESaIS2_EEC2Ev(%"struct.std::_Vector_base.67"* %0)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIPN4llvm8ConstantESaIS2_EE9push_backERKS2_(%"class.std::vector.66"* %this, %"class.llvm::Constant"** %__x) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.66"*, align 8
  %__x.addr = alloca %"class.llvm::Constant"**, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.80", align 8
  store %"class.std::vector.66"* %this, %"class.std::vector.66"** %this.addr, align 8
  store %"class.llvm::Constant"** %__x, %"class.llvm::Constant"*** %__x.addr, align 8
  %this1 = load %"class.std::vector.66"** %this.addr
  %0 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.67"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %"class.llvm::Constant"*** %_M_finish, align 8
  %2 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.67"* %2, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %3 = load %"class.llvm::Constant"*** %_M_end_of_storage, align 8
  %cmp = icmp ne %"class.llvm::Constant"** %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.67"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl3 to %"class.std::allocator.68"*
  %6 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.67"* %6, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  %7 = load %"class.llvm::Constant"*** %_M_finish5, align 8
  %8 = load %"class.llvm::Constant"*** %__x.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm8ConstantEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator.68"* %5, %"class.llvm::Constant"** %7, %"class.llvm::Constant"** %8)
  %9 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.67"* %9, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %10 = load %"class.llvm::Constant"*** %_M_finish7, align 8
  %incdec.ptr = getelementptr inbounds %"class.llvm::Constant"** %10, i32 1
  store %"class.llvm::Constant"** %incdec.ptr, %"class.llvm::Constant"*** %_M_finish7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call %"class.llvm::Constant"** @_ZNSt6vectorIPN4llvm8ConstantESaIS2_EE3endEv(%"class.std::vector.66"* %this1)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.80"* %agg.tmp, i32 0, i32 0
  store %"class.llvm::Constant"** %call, %"class.llvm::Constant"*** %coerce.dive
  %11 = load %"class.llvm::Constant"*** %__x.addr, align 8
  %coerce.dive8 = getelementptr %"class.__gnu_cxx::__normal_iterator.80"* %agg.tmp, i32 0, i32 0
  %12 = load %"class.llvm::Constant"*** %coerce.dive8
  call void @_ZNSt6vectorIPN4llvm8ConstantESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_(%"class.std::vector.66"* %this1, %"class.llvm::Constant"** %12, %"class.llvm::Constant"** %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Constant"* @_ZN4llvm12ConstantExpr16getGetElementPtrEPNS_8ConstantENS_8ArrayRefIS2_EEb(%"class.llvm::Constant"* %C, %"class.llvm::Constant"** %IdxList.coerce0, i64 %IdxList.coerce1, i1 zeroext %InBounds) #0 align 2 {
entry:
  %C.addr = alloca %"class.llvm::Constant"*, align 8
  %IdxList = alloca %"class.llvm::ArrayRef.71", align 8
  %InBounds.addr = alloca i8, align 1
  %agg.tmp = alloca %"class.llvm::ArrayRef.77", align 8
  store %"class.llvm::Constant"* %C, %"class.llvm::Constant"** %C.addr, align 8
  %0 = bitcast %"class.llvm::ArrayRef.71"* %IdxList to { %"class.llvm::Constant"**, i64 }*
  %1 = getelementptr { %"class.llvm::Constant"**, i64 }* %0, i32 0, i32 0
  store %"class.llvm::Constant"** %IdxList.coerce0, %"class.llvm::Constant"*** %1
  %2 = getelementptr { %"class.llvm::Constant"**, i64 }* %0, i32 0, i32 1
  store i64 %IdxList.coerce1, i64* %2
  %frombool = zext i1 %InBounds to i8
  store i8 %frombool, i8* %InBounds.addr, align 1
  %3 = load %"class.llvm::Constant"** %C.addr, align 8
  %call = call %"class.llvm::Constant"** @_ZNK4llvm8ArrayRefIPNS_8ConstantEE4dataEv(%"class.llvm::ArrayRef.71"* %IdxList)
  %4 = bitcast %"class.llvm::Constant"** %call to %"class.llvm::Value"**
  %call1 = call i64 @_ZNK4llvm8ArrayRefIPNS_8ConstantEE4sizeEv(%"class.llvm::ArrayRef.71"* %IdxList)
  %call2 = call { %"class.llvm::Value"**, i64 } @_ZN4llvm12makeArrayRefIPNS_5ValueEEENS_8ArrayRefIT_EEPKS4_m(%"class.llvm::Value"** %4, i64 %call1)
  %5 = bitcast %"class.llvm::ArrayRef.77"* %agg.tmp to { %"class.llvm::Value"**, i64 }*
  %6 = getelementptr { %"class.llvm::Value"**, i64 }* %5, i32 0, i32 0
  %7 = extractvalue { %"class.llvm::Value"**, i64 } %call2, 0
  store %"class.llvm::Value"** %7, %"class.llvm::Value"*** %6, align 1
  %8 = getelementptr { %"class.llvm::Value"**, i64 }* %5, i32 0, i32 1
  %9 = extractvalue { %"class.llvm::Value"**, i64 } %call2, 1
  store i64 %9, i64* %8, align 1
  %10 = load i8* %InBounds.addr, align 1
  %tobool = trunc i8 %10 to i1
  %11 = bitcast %"class.llvm::ArrayRef.77"* %agg.tmp to { %"class.llvm::Value"**, i64 }*
  %12 = getelementptr { %"class.llvm::Value"**, i64 }* %11, i32 0, i32 0
  %13 = load %"class.llvm::Value"*** %12, align 1
  %14 = getelementptr { %"class.llvm::Value"**, i64 }* %11, i32 0, i32 1
  %15 = load i64* %14, align 1
  %call3 = call %"class.llvm::Constant"* @_ZN4llvm12ConstantExpr16getGetElementPtrEPNS_8ConstantENS_8ArrayRefIPNS_5ValueEEEb(%"class.llvm::Constant"* %3, %"class.llvm::Value"** %13, i64 %15, i1 zeroext %tobool)
  ret %"class.llvm::Constant"* %call3
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm8ArrayRefIPNS_8ConstantEEC2ISaIS2_EEERKSt6vectorIS2_T_E(%"class.llvm::ArrayRef.71"* %this, %"class.std::vector.66"* %Vec) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ArrayRef.71"*, align 8
  %Vec.addr = alloca %"class.std::vector.66"*, align 8
  store %"class.llvm::ArrayRef.71"* %this, %"class.llvm::ArrayRef.71"** %this.addr, align 8
  store %"class.std::vector.66"* %Vec, %"class.std::vector.66"** %Vec.addr, align 8
  %this1 = load %"class.llvm::ArrayRef.71"** %this.addr
  %Data = getelementptr inbounds %"class.llvm::ArrayRef.71"* %this1, i32 0, i32 0
  %0 = load %"class.std::vector.66"** %Vec.addr, align 8
  %call = call zeroext i1 @_ZNKSt6vectorIPN4llvm8ConstantESaIS2_EE5emptyEv(%"class.std::vector.66"* %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %"class.std::vector.66"** %Vec.addr, align 8
  %call2 = call %"class.llvm::Constant"** @_ZNKSt6vectorIPN4llvm8ConstantESaIS2_EEixEm(%"class.std::vector.66"* %1, i64 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"class.llvm::Constant"** [ null, %cond.true ], [ %call2, %cond.false ]
  store %"class.llvm::Constant"** %cond, %"class.llvm::Constant"*** %Data, align 8
  %Length = getelementptr inbounds %"class.llvm::ArrayRef.71"* %this1, i32 0, i32 1
  %2 = load %"class.std::vector.66"** %Vec.addr, align 8
  %call3 = call i64 @_ZNKSt6vectorIPN4llvm8ConstantESaIS2_EE4sizeEv(%"class.std::vector.66"* %2)
  store i64 %call3, i64* %Length, align 8
  ret void
}

declare void @_ZN4llvm14GlobalVariable14setInitializerEPNS_8ConstantE(%"class.llvm::GlobalVariable"*, %"class.llvm::Constant"*) #1

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Argument"* @_ZN4llvm8Function9arg_beginEv(%"class.llvm::Function"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.llvm::ilist_iterator", align 8
  %this.addr = alloca %"class.llvm::Function"*, align 8
  store %"class.llvm::Function"* %this, %"class.llvm::Function"** %this.addr, align 8
  %this1 = load %"class.llvm::Function"** %this.addr
  call void @_ZNK4llvm8Function18CheckLazyArgumentsEv(%"class.llvm::Function"* %this1)
  %ArgumentList = getelementptr inbounds %"class.llvm::Function"* %this1, i32 0, i32 3
  %call = call %"class.llvm::Argument"* @_ZN4llvm6iplistINS_8ArgumentENS_12ilist_traitsIS1_EEE5beginEv(%"class.llvm::iplist.34"* %ArgumentList)
  %coerce.dive = getelementptr %"class.llvm::ilist_iterator"* %retval, i32 0, i32 0
  store %"class.llvm::Argument"* %call, %"class.llvm::Argument"** %coerce.dive
  %coerce.dive2 = getelementptr %"class.llvm::ilist_iterator"* %retval, i32 0, i32 0
  %0 = load %"class.llvm::Argument"** %coerce.dive2
  ret %"class.llvm::Argument"* %0
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Argument"* @_ZN4llvm14ilist_iteratorINS_8ArgumentEEppEi(%"class.llvm::ilist_iterator"* %this, i32) #0 align 2 {
entry:
  %retval = alloca %"class.llvm::ilist_iterator", align 8
  %this.addr = alloca %"class.llvm::ilist_iterator"*, align 8
  %.addr = alloca i32, align 4
  store %"class.llvm::ilist_iterator"* %this, %"class.llvm::ilist_iterator"** %this.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %this1 = load %"class.llvm::ilist_iterator"** %this.addr
  %1 = bitcast %"class.llvm::ilist_iterator"* %retval to i8*
  %2 = bitcast %"class.llvm::ilist_iterator"* %this1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %call = call %"class.llvm::ilist_iterator"* @_ZN4llvm14ilist_iteratorINS_8ArgumentEEppEv(%"class.llvm::ilist_iterator"* %this1)
  %coerce.dive = getelementptr %"class.llvm::ilist_iterator"* %retval, i32 0, i32 0
  %3 = load %"class.llvm::Argument"** %coerce.dive
  ret %"class.llvm::Argument"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Argument"* @_ZNK4llvm14ilist_iteratorINS_8ArgumentEEcvPS1_Ev(%"class.llvm::ilist_iterator"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_iterator"*, align 8
  store %"class.llvm::ilist_iterator"* %this, %"class.llvm::ilist_iterator"** %this.addr, align 8
  %this1 = load %"class.llvm::ilist_iterator"** %this.addr
  %NodePtr = getelementptr inbounds %"class.llvm::ilist_iterator"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::Argument"** %NodePtr, align 8
  ret %"class.llvm::Argument"* %0
}

declare void @_ZN4llvm5Value7setNameERKNS_5TwineE(%"class.llvm::Value"*, %"class.llvm::Twine"*) #1

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::BasicBlock"* @_ZN4llvm10BasicBlock6CreateERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(%"class.llvm::LLVMContext"* %Context, %"class.llvm::Twine"* %Name, %"class.llvm::Function"* %Parent, %"class.llvm::BasicBlock"* %InsertBefore) #0 align 2 {
entry:
  %Context.addr = alloca %"class.llvm::LLVMContext"*, align 8
  %Name.addr = alloca %"class.llvm::Twine"*, align 8
  %Parent.addr = alloca %"class.llvm::Function"*, align 8
  %InsertBefore.addr = alloca %"class.llvm::BasicBlock"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.llvm::LLVMContext"* %Context, %"class.llvm::LLVMContext"** %Context.addr, align 8
  store %"class.llvm::Twine"* %Name, %"class.llvm::Twine"** %Name.addr, align 8
  store %"class.llvm::Function"* %Parent, %"class.llvm::Function"** %Parent.addr, align 8
  store %"class.llvm::BasicBlock"* %InsertBefore, %"class.llvm::BasicBlock"** %InsertBefore.addr, align 8
  %call = call noalias i8* @_Znwm(i64 80) #14
  %0 = bitcast i8* %call to %"class.llvm::BasicBlock"*
  %1 = load %"class.llvm::LLVMContext"** %Context.addr, align 8
  %2 = load %"class.llvm::Twine"** %Name.addr, align 8
  %3 = load %"class.llvm::Function"** %Parent.addr, align 8
  %4 = load %"class.llvm::BasicBlock"** %InsertBefore.addr, align 8
  invoke void @_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(%"class.llvm::BasicBlock"* %0, %"class.llvm::LLVMContext"* %1, %"class.llvm::Twine"* %2, %"class.llvm::Function"* %3, %"class.llvm::BasicBlock"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret %"class.llvm::BasicBlock"* %0

lpad:                                             ; preds = %entry
  %5 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot
  call void @_ZdlPv(i8* %call) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val1 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val1
}

; Function Attrs: uwtable
define linkonce_odr i8* @_ZN4llvm16UnaryInstructionnwEm(i64 %s) #0 align 2 {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, i64* %s.addr, align 8
  %0 = load i64* %s.addr, align 8
  %call = call i8* @_ZN4llvm4UsernwEmj(i64 %0, i32 1)
  ret i8* %call
}

declare void @_ZN4llvm10AllocaInstC1EPNS_4TypeERKNS_5TwineEPNS_10BasicBlockE(%"class.llvm::AllocaInst"*, %"class.llvm::Type"*, %"class.llvm::Twine"*, %"class.llvm::BasicBlock"*) #1

declare void @_ZN4llvm10AllocaInst12setAlignmentEj(%"class.llvm::AllocaInst"*, i32) #1

; Function Attrs: uwtable
define linkonce_odr i8* @_ZN4llvm9StoreInstnwEm(i64 %s) #0 align 2 {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, i64* %s.addr, align 8
  %0 = load i64* %s.addr, align 8
  %call = call i8* @_ZN4llvm4UsernwEmj(i64 %0, i32 2)
  ret i8* %call
}

declare void @_ZN4llvm9StoreInstC1EPNS_5ValueES2_bPNS_10BasicBlockE(%"class.llvm::StoreInst"*, %"class.llvm::Value"*, %"class.llvm::Value"*, i1 zeroext, %"class.llvm::BasicBlock"*) #1

declare void @_ZN4llvm9StoreInst12setAlignmentEj(%"class.llvm::StoreInst"*, i32) #1

declare void @_ZN4llvm8LoadInstC1EPNS_5ValueEPKcbPNS_10BasicBlockE(%"class.llvm::LoadInst"*, %"class.llvm::Value"*, i8*, i1 zeroext, %"class.llvm::BasicBlock"*) #1

declare void @_ZN4llvm8LoadInst12setAlignmentEj(%"class.llvm::LoadInst"*, i32) #1

; Function Attrs: uwtable
define linkonce_odr i8* @_ZN4llvm7CmpInstnwEm(i64 %s) #0 align 2 {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, i64* %s.addr, align 8
  %0 = load i64* %s.addr, align 8
  %call = call i8* @_ZN4llvm4UsernwEmj(i64 %0, i32 2)
  ret i8* %call
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm8ICmpInstC2ERNS_10BasicBlockENS_7CmpInst9PredicateEPNS_5ValueES6_RKNS_5TwineE(%"class.llvm::ICmpInst"* %this, %"class.llvm::BasicBlock"* %InsertAtEnd, i32 %pred, %"class.llvm::Value"* %LHS, %"class.llvm::Value"* %RHS, %"class.llvm::Twine"* %NameStr) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ICmpInst"*, align 8
  %InsertAtEnd.addr = alloca %"class.llvm::BasicBlock"*, align 8
  %pred.addr = alloca i32, align 4
  %LHS.addr = alloca %"class.llvm::Value"*, align 8
  %RHS.addr = alloca %"class.llvm::Value"*, align 8
  %NameStr.addr = alloca %"class.llvm::Twine"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.llvm::ICmpInst"* %this, %"class.llvm::ICmpInst"** %this.addr, align 8
  store %"class.llvm::BasicBlock"* %InsertAtEnd, %"class.llvm::BasicBlock"** %InsertAtEnd.addr, align 8
  store i32 %pred, i32* %pred.addr, align 4
  store %"class.llvm::Value"* %LHS, %"class.llvm::Value"** %LHS.addr, align 8
  store %"class.llvm::Value"* %RHS, %"class.llvm::Value"** %RHS.addr, align 8
  store %"class.llvm::Twine"* %NameStr, %"class.llvm::Twine"** %NameStr.addr, align 8
  %this1 = load %"class.llvm::ICmpInst"** %this.addr
  %0 = bitcast %"class.llvm::ICmpInst"* %this1 to %"class.llvm::CmpInst"*
  %1 = load %"class.llvm::Value"** %LHS.addr, align 8
  %call = call %"class.llvm::Type"* @_ZNK4llvm5Value7getTypeEv(%"class.llvm::Value"* %1)
  %call2 = call %"class.llvm::Type"* @_ZN4llvm7CmpInst17makeCmpResultTypeEPNS_4TypeE(%"class.llvm::Type"* %call)
  %2 = load i32* %pred.addr, align 4
  %conv = trunc i32 %2 to i16
  %3 = load %"class.llvm::Value"** %LHS.addr, align 8
  %4 = load %"class.llvm::Value"** %RHS.addr, align 8
  %5 = load %"class.llvm::Twine"** %NameStr.addr, align 8
  %6 = load %"class.llvm::BasicBlock"** %InsertAtEnd.addr, align 8
  call void @_ZN4llvm7CmpInstC2EPNS_4TypeENS_11Instruction8OtherOpsEtPNS_5ValueES6_RKNS_5TwineEPNS_10BasicBlockE(%"class.llvm::CmpInst"* %0, %"class.llvm::Type"* %call2, i32 46, i16 zeroext %conv, %"class.llvm::Value"* %3, %"class.llvm::Value"* %4, %"class.llvm::Twine"* %5, %"class.llvm::BasicBlock"* %6)
  %7 = bitcast %"class.llvm::ICmpInst"* %this1 to i8***
  store i8** getelementptr inbounds ([7 x i8*]* @_ZTVN4llvm8ICmpInstE, i64 0, i64 2), i8*** %7
  invoke void @_ZN4llvm8ICmpInst8AssertOKEv(%"class.llvm::ICmpInst"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot
  %11 = bitcast %"class.llvm::ICmpInst"* %this1 to %"class.llvm::CmpInst"*
  invoke void @_ZN4llvm7CmpInstD2Ev(%"class.llvm::CmpInst"* %11)
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont3
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4

terminate.lpad:                                   ; preds = %lpad
  %12 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  call void @__clang_call_terminate(i8* %13) #13
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::BranchInst"* @_ZN4llvm10BranchInst6CreateEPNS_10BasicBlockES2_PNS_5ValueES2_(%"class.llvm::BasicBlock"* %IfTrue, %"class.llvm::BasicBlock"* %IfFalse, %"class.llvm::Value"* %Cond, %"class.llvm::BasicBlock"* %InsertAtEnd) #0 align 2 {
entry:
  %IfTrue.addr = alloca %"class.llvm::BasicBlock"*, align 8
  %IfFalse.addr = alloca %"class.llvm::BasicBlock"*, align 8
  %Cond.addr = alloca %"class.llvm::Value"*, align 8
  %InsertAtEnd.addr = alloca %"class.llvm::BasicBlock"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.llvm::BasicBlock"* %IfTrue, %"class.llvm::BasicBlock"** %IfTrue.addr, align 8
  store %"class.llvm::BasicBlock"* %IfFalse, %"class.llvm::BasicBlock"** %IfFalse.addr, align 8
  store %"class.llvm::Value"* %Cond, %"class.llvm::Value"** %Cond.addr, align 8
  store %"class.llvm::BasicBlock"* %InsertAtEnd, %"class.llvm::BasicBlock"** %InsertAtEnd.addr, align 8
  %call = call i8* @_ZN4llvm4UsernwEmj(i64 88, i32 3)
  %0 = bitcast i8* %call to %"class.llvm::BranchInst"*
  %1 = load %"class.llvm::BasicBlock"** %IfTrue.addr, align 8
  %2 = load %"class.llvm::BasicBlock"** %IfFalse.addr, align 8
  %3 = load %"class.llvm::Value"** %Cond.addr, align 8
  %4 = load %"class.llvm::BasicBlock"** %InsertAtEnd.addr, align 8
  invoke void @_ZN4llvm10BranchInstC1EPNS_10BasicBlockES2_PNS_5ValueES2_(%"class.llvm::BranchInst"* %0, %"class.llvm::BasicBlock"* %1, %"class.llvm::BasicBlock"* %2, %"class.llvm::Value"* %3, %"class.llvm::BasicBlock"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret %"class.llvm::BranchInst"* %0

lpad:                                             ; preds = %entry
  %5 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot
  invoke void @_ZN4llvm4UserdlEPvj(i8* %call, i32 3)
          to label %invoke.cont1 unwind label %terminate.lpad

invoke.cont1:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont1
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2

terminate.lpad:                                   ; preds = %lpad
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  call void @__clang_call_terminate(i8* %9) #13
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::BranchInst"* @_ZN4llvm10BranchInst6CreateEPNS_10BasicBlockES2_(%"class.llvm::BasicBlock"* %IfTrue, %"class.llvm::BasicBlock"* %InsertAtEnd) #0 align 2 {
entry:
  %IfTrue.addr = alloca %"class.llvm::BasicBlock"*, align 8
  %InsertAtEnd.addr = alloca %"class.llvm::BasicBlock"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.llvm::BasicBlock"* %IfTrue, %"class.llvm::BasicBlock"** %IfTrue.addr, align 8
  store %"class.llvm::BasicBlock"* %InsertAtEnd, %"class.llvm::BasicBlock"** %InsertAtEnd.addr, align 8
  %call = call i8* @_ZN4llvm4UsernwEmj(i64 88, i32 1)
  %0 = bitcast i8* %call to %"class.llvm::BranchInst"*
  %1 = load %"class.llvm::BasicBlock"** %IfTrue.addr, align 8
  %2 = load %"class.llvm::BasicBlock"** %InsertAtEnd.addr, align 8
  invoke void @_ZN4llvm10BranchInstC1EPNS_10BasicBlockES2_(%"class.llvm::BranchInst"* %0, %"class.llvm::BasicBlock"* %1, %"class.llvm::BasicBlock"* %2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret %"class.llvm::BranchInst"* %0

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  invoke void @_ZN4llvm4UserdlEPvj(i8* %call, i32 1)
          to label %invoke.cont1 unwind label %terminate.lpad

invoke.cont1:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont1
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2

terminate.lpad:                                   ; preds = %lpad
  %6 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #13
  unreachable
}

declare %"class.llvm::BinaryOperator"* @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineEPNS_10BasicBlockE(i32, %"class.llvm::Value"*, %"class.llvm::Value"*, %"class.llvm::Twine"*, %"class.llvm::BasicBlock"*) #1

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIPN4llvm5ValueESaIS2_EEC2Ev(%"class.std::vector.72"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.72"*, align 8
  store %"class.std::vector.72"* %this, %"class.std::vector.72"** %this.addr, align 8
  %this1 = load %"class.std::vector.72"** %this.addr
  %0 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  call void @_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EEC2Ev(%"struct.std::_Vector_base.73"* %0)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backERKS2_(%"class.std::vector.72"* %this, %"class.llvm::Value"** %__x) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.72"*, align 8
  %__x.addr = alloca %"class.llvm::Value"**, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.78", align 8
  store %"class.std::vector.72"* %this, %"class.std::vector.72"** %this.addr, align 8
  store %"class.llvm::Value"** %__x, %"class.llvm::Value"*** %__x.addr, align 8
  %this1 = load %"class.std::vector.72"** %this.addr
  %0 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.73"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %"class.llvm::Value"*** %_M_finish, align 8
  %2 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.73"* %2, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %3 = load %"class.llvm::Value"*** %_M_end_of_storage, align 8
  %cmp = icmp ne %"class.llvm::Value"** %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.73"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl3 to %"class.std::allocator.74"*
  %6 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.73"* %6, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  %7 = load %"class.llvm::Value"*** %_M_finish5, align 8
  %8 = load %"class.llvm::Value"*** %__x.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm5ValueEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator.74"* %5, %"class.llvm::Value"** %7, %"class.llvm::Value"** %8)
  %9 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.73"* %9, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %10 = load %"class.llvm::Value"*** %_M_finish7, align 8
  %incdec.ptr = getelementptr inbounds %"class.llvm::Value"** %10, i32 1
  store %"class.llvm::Value"** %incdec.ptr, %"class.llvm::Value"*** %_M_finish7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call %"class.llvm::Value"** @_ZNSt6vectorIPN4llvm5ValueESaIS2_EE3endEv(%"class.std::vector.72"* %this1)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.78"* %agg.tmp, i32 0, i32 0
  store %"class.llvm::Value"** %call, %"class.llvm::Value"*** %coerce.dive
  %11 = load %"class.llvm::Value"*** %__x.addr, align 8
  %coerce.dive8 = getelementptr %"class.__gnu_cxx::__normal_iterator.78"* %agg.tmp, i32 0, i32 0
  %12 = load %"class.llvm::Value"*** %coerce.dive8
  call void @_ZNSt6vectorIPN4llvm5ValueESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_(%"class.std::vector.72"* %this1, %"class.llvm::Value"** %12, %"class.llvm::Value"** %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::CallInst"* @_ZN4llvm8CallInst6CreateEPNS_5ValueENS_8ArrayRefIS2_EERKNS_5TwineEPNS_10BasicBlockE(%"class.llvm::Value"* %Func, %"class.llvm::Value"** %Args.coerce0, i64 %Args.coerce1, %"class.llvm::Twine"* %NameStr, %"class.llvm::BasicBlock"* %InsertAtEnd) #0 align 2 {
entry:
  %Func.addr = alloca %"class.llvm::Value"*, align 8
  %Args = alloca %"class.llvm::ArrayRef.77", align 8
  %NameStr.addr = alloca %"class.llvm::Twine"*, align 8
  %InsertAtEnd.addr = alloca %"class.llvm::BasicBlock"*, align 8
  %agg.tmp = alloca %"class.llvm::ArrayRef.77", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.llvm::Value"* %Func, %"class.llvm::Value"** %Func.addr, align 8
  %0 = bitcast %"class.llvm::ArrayRef.77"* %Args to { %"class.llvm::Value"**, i64 }*
  %1 = getelementptr { %"class.llvm::Value"**, i64 }* %0, i32 0, i32 0
  store %"class.llvm::Value"** %Args.coerce0, %"class.llvm::Value"*** %1
  %2 = getelementptr { %"class.llvm::Value"**, i64 }* %0, i32 0, i32 1
  store i64 %Args.coerce1, i64* %2
  store %"class.llvm::Twine"* %NameStr, %"class.llvm::Twine"** %NameStr.addr, align 8
  store %"class.llvm::BasicBlock"* %InsertAtEnd, %"class.llvm::BasicBlock"** %InsertAtEnd.addr, align 8
  %call = call i64 @_ZNK4llvm8ArrayRefIPNS_5ValueEE4sizeEv(%"class.llvm::ArrayRef.77"* %Args)
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  %call1 = call i8* @_ZN4llvm4UsernwEmj(i64 96, i32 %conv)
  %3 = bitcast i8* %call1 to %"class.llvm::CallInst"*
  %4 = load %"class.llvm::Value"** %Func.addr, align 8
  %5 = bitcast %"class.llvm::ArrayRef.77"* %agg.tmp to i8*
  %6 = bitcast %"class.llvm::ArrayRef.77"* %Args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = load %"class.llvm::Twine"** %NameStr.addr, align 8
  %8 = load %"class.llvm::BasicBlock"** %InsertAtEnd.addr, align 8
  %9 = bitcast %"class.llvm::ArrayRef.77"* %agg.tmp to { %"class.llvm::Value"**, i64 }*
  %10 = getelementptr { %"class.llvm::Value"**, i64 }* %9, i32 0, i32 0
  %11 = load %"class.llvm::Value"*** %10, align 1
  %12 = getelementptr { %"class.llvm::Value"**, i64 }* %9, i32 0, i32 1
  %13 = load i64* %12, align 1
  invoke void @_ZN4llvm8CallInstC2EPNS_5ValueENS_8ArrayRefIS2_EERKNS_5TwineEPNS_10BasicBlockE(%"class.llvm::CallInst"* %3, %"class.llvm::Value"* %4, %"class.llvm::Value"** %11, i64 %13, %"class.llvm::Twine"* %7, %"class.llvm::BasicBlock"* %8)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret %"class.llvm::CallInst"* %3

lpad:                                             ; preds = %entry
  %14 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %ehselector.slot
  invoke void @_ZN4llvm4UserdlEPvj(i8* %call1, i32 %conv)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont2
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3

terminate.lpad:                                   ; preds = %lpad
  %17 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %18 = extractvalue { i8*, i32 } %17, 0
  call void @__clang_call_terminate(i8* %18) #13
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm8ArrayRefIPNS_5ValueEEC2ISaIS2_EEERKSt6vectorIS2_T_E(%"class.llvm::ArrayRef.77"* %this, %"class.std::vector.72"* %Vec) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ArrayRef.77"*, align 8
  %Vec.addr = alloca %"class.std::vector.72"*, align 8
  store %"class.llvm::ArrayRef.77"* %this, %"class.llvm::ArrayRef.77"** %this.addr, align 8
  store %"class.std::vector.72"* %Vec, %"class.std::vector.72"** %Vec.addr, align 8
  %this1 = load %"class.llvm::ArrayRef.77"** %this.addr
  %Data = getelementptr inbounds %"class.llvm::ArrayRef.77"* %this1, i32 0, i32 0
  %0 = load %"class.std::vector.72"** %Vec.addr, align 8
  %call = call zeroext i1 @_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE5emptyEv(%"class.std::vector.72"* %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %"class.std::vector.72"** %Vec.addr, align 8
  %call2 = call %"class.llvm::Value"** @_ZNKSt6vectorIPN4llvm5ValueESaIS2_EEixEm(%"class.std::vector.72"* %1, i64 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"class.llvm::Value"** [ null, %cond.true ], [ %call2, %cond.false ]
  store %"class.llvm::Value"** %cond, %"class.llvm::Value"*** %Data, align 8
  %Length = getelementptr inbounds %"class.llvm::ArrayRef.77"* %this1, i32 0, i32 1
  %2 = load %"class.std::vector.72"** %Vec.addr, align 8
  %call3 = call i64 @_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE4sizeEv(%"class.std::vector.72"* %2)
  store i64 %call3, i64* %Length, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm8CallInst14setCallingConvENS_11CallingConv2IDE(%"class.llvm::CallInst"* %this, i32 %CC) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::CallInst"*, align 8
  %CC.addr = alloca i32, align 4
  store %"class.llvm::CallInst"* %this, %"class.llvm::CallInst"** %this.addr, align 8
  store i32 %CC, i32* %CC.addr, align 4
  %this1 = load %"class.llvm::CallInst"** %this.addr
  %0 = bitcast %"class.llvm::CallInst"* %this1 to %"class.llvm::Instruction"*
  %call = call i32 @_ZNK4llvm11Instruction30getSubclassDataFromInstructionEv(%"class.llvm::Instruction"* %0)
  %and = and i32 %call, 1
  %1 = load i32* %CC.addr, align 4
  %shl = shl i32 %1, 1
  %or = or i32 %and, %shl
  %conv = trunc i32 %or to i16
  call void @_ZN4llvm8CallInst26setInstructionSubclassDataEt(%"class.llvm::CallInst"* %this1, i16 zeroext %conv)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm8CallInst11setTailCallEb(%"class.llvm::CallInst"* %this, i1 zeroext %isTC) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::CallInst"*, align 8
  %isTC.addr = alloca i8, align 1
  store %"class.llvm::CallInst"* %this, %"class.llvm::CallInst"** %this.addr, align 8
  %frombool = zext i1 %isTC to i8
  store i8 %frombool, i8* %isTC.addr, align 1
  %this1 = load %"class.llvm::CallInst"** %this.addr
  %0 = bitcast %"class.llvm::CallInst"* %this1 to %"class.llvm::Instruction"*
  %call = call i32 @_ZNK4llvm11Instruction30getSubclassDataFromInstructionEv(%"class.llvm::Instruction"* %0)
  %and = and i32 %call, -2
  %1 = load i8* %isTC.addr, align 1
  %tobool = trunc i8 %1 to i1
  %conv = zext i1 %tobool to i32
  %or = or i32 %and, %conv
  %conv2 = trunc i32 %or to i16
  call void @_ZN4llvm8CallInst26setInstructionSubclassDataEt(%"class.llvm::CallInst"* %this1, i16 zeroext %conv2)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4llvm8CallInst13setAttributesERKNS_12AttributeSetE(%"class.llvm::CallInst"* %this, %"class.llvm::AttributeSet"* %Attrs) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::CallInst"*, align 8
  %Attrs.addr = alloca %"class.llvm::AttributeSet"*, align 8
  store %"class.llvm::CallInst"* %this, %"class.llvm::CallInst"** %this.addr, align 8
  store %"class.llvm::AttributeSet"* %Attrs, %"class.llvm::AttributeSet"** %Attrs.addr, align 8
  %this1 = load %"class.llvm::CallInst"** %this.addr
  %AttributeList = getelementptr inbounds %"class.llvm::CallInst"* %this1, i32 0, i32 1
  %0 = load %"class.llvm::AttributeSet"** %Attrs.addr, align 8
  %1 = bitcast %"class.llvm::AttributeSet"* %AttributeList to i8*
  %2 = bitcast %"class.llvm::AttributeSet"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::PHINode"* @_ZN4llvm7PHINode6CreateEPNS_4TypeEjRKNS_5TwineEPNS_10BasicBlockE(%"class.llvm::Type"* %Ty, i32 %NumReservedValues, %"class.llvm::Twine"* %NameStr, %"class.llvm::BasicBlock"* %InsertAtEnd) #0 align 2 {
entry:
  %Ty.addr = alloca %"class.llvm::Type"*, align 8
  %NumReservedValues.addr = alloca i32, align 4
  %NameStr.addr = alloca %"class.llvm::Twine"*, align 8
  %InsertAtEnd.addr = alloca %"class.llvm::BasicBlock"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.llvm::Type"* %Ty, %"class.llvm::Type"** %Ty.addr, align 8
  store i32 %NumReservedValues, i32* %NumReservedValues.addr, align 4
  store %"class.llvm::Twine"* %NameStr, %"class.llvm::Twine"** %NameStr.addr, align 8
  store %"class.llvm::BasicBlock"* %InsertAtEnd, %"class.llvm::BasicBlock"** %InsertAtEnd.addr, align 8
  %call = call i8* @_ZN4llvm7PHINodenwEm(i64 96)
  %0 = bitcast i8* %call to %"class.llvm::PHINode"*
  %1 = load %"class.llvm::Type"** %Ty.addr, align 8
  %2 = load i32* %NumReservedValues.addr, align 4
  %3 = load %"class.llvm::Twine"** %NameStr.addr, align 8
  %4 = load %"class.llvm::BasicBlock"** %InsertAtEnd.addr, align 8
  invoke void @_ZN4llvm7PHINodeC2EPNS_4TypeEjRKNS_5TwineEPNS_10BasicBlockE(%"class.llvm::PHINode"* %0, %"class.llvm::Type"* %1, i32 %2, %"class.llvm::Twine"* %3, %"class.llvm::BasicBlock"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret %"class.llvm::PHINode"* %0

lpad:                                             ; preds = %entry
  %5 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot
  invoke void @_ZN4llvm4UserdlEPv(i8* %call)
          to label %invoke.cont1 unwind label %terminate.lpad

invoke.cont1:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont1
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2

terminate.lpad:                                   ; preds = %lpad
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  call void @__clang_call_terminate(i8* %9) #13
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE(%"class.llvm::PHINode"* %this, %"class.llvm::Value"* %V, %"class.llvm::BasicBlock"* %BB) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::PHINode"*, align 8
  %V.addr = alloca %"class.llvm::Value"*, align 8
  %BB.addr = alloca %"class.llvm::BasicBlock"*, align 8
  store %"class.llvm::PHINode"* %this, %"class.llvm::PHINode"** %this.addr, align 8
  store %"class.llvm::Value"* %V, %"class.llvm::Value"** %V.addr, align 8
  store %"class.llvm::BasicBlock"* %BB, %"class.llvm::BasicBlock"** %BB.addr, align 8
  %this1 = load %"class.llvm::PHINode"** %this.addr
  %0 = load %"class.llvm::Value"** %V.addr, align 8
  %tobool = icmp ne %"class.llvm::Value"* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8]* @.str31, i32 0, i32 0), i32 2101, i8* getelementptr inbounds ([67 x i8]* @__PRETTY_FUNCTION__._ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %"class.llvm::BasicBlock"** %BB.addr, align 8
  %tobool2 = icmp ne %"class.llvm::BasicBlock"* %2, null
  br i1 %tobool2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8]* @.str31, i32 0, i32 0), i32 2102, i8* getelementptr inbounds ([67 x i8]* @__PRETTY_FUNCTION__._ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end5

cond.end5:                                        ; preds = %3, %cond.true3
  %4 = bitcast %"class.llvm::PHINode"* %this1 to %"class.llvm::Value"*
  %call = call %"class.llvm::Type"* @_ZNK4llvm5Value7getTypeEv(%"class.llvm::Value"* %4)
  %5 = load %"class.llvm::Value"** %V.addr, align 8
  %call6 = call %"class.llvm::Type"* @_ZNK4llvm5Value7getTypeEv(%"class.llvm::Value"* %5)
  %cmp = icmp eq %"class.llvm::Type"* %call, %call6
  br i1 %cmp, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.end5
  br label %cond.end9

cond.false8:                                      ; preds = %cond.end5
  call void @__assert_fail(i8* getelementptr inbounds ([95 x i8]* @.str33, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8]* @.str31, i32 0, i32 0), i32 2104, i8* getelementptr inbounds ([67 x i8]* @__PRETTY_FUNCTION__._ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end9

cond.end9:                                        ; preds = %6, %cond.true7
  %7 = bitcast %"class.llvm::PHINode"* %this1 to %"class.llvm::User"*
  %NumOperands = getelementptr inbounds %"class.llvm::User"* %7, i32 0, i32 2
  %8 = load i32* %NumOperands, align 4
  %ReservedSpace = getelementptr inbounds %"class.llvm::PHINode"* %this1, i32 0, i32 1
  %9 = load i32* %ReservedSpace, align 4
  %cmp10 = icmp eq i32 %8, %9
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end9
  call void @_ZN4llvm7PHINode12growOperandsEv(%"class.llvm::PHINode"* %this1)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end9
  %10 = bitcast %"class.llvm::PHINode"* %this1 to %"class.llvm::User"*
  %NumOperands11 = getelementptr inbounds %"class.llvm::User"* %10, i32 0, i32 2
  %11 = load i32* %NumOperands11, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %NumOperands11, align 4
  %12 = bitcast %"class.llvm::PHINode"* %this1 to %"class.llvm::User"*
  %NumOperands12 = getelementptr inbounds %"class.llvm::User"* %12, i32 0, i32 2
  %13 = load i32* %NumOperands12, align 4
  %sub = sub i32 %13, 1
  %14 = load %"class.llvm::Value"** %V.addr, align 8
  call void @_ZN4llvm7PHINode16setIncomingValueEjPNS_5ValueE(%"class.llvm::PHINode"* %this1, i32 %sub, %"class.llvm::Value"* %14)
  %15 = bitcast %"class.llvm::PHINode"* %this1 to %"class.llvm::User"*
  %NumOperands13 = getelementptr inbounds %"class.llvm::User"* %15, i32 0, i32 2
  %16 = load i32* %NumOperands13, align 4
  %sub14 = sub i32 %16, 1
  %17 = load %"class.llvm::BasicBlock"** %BB.addr, align 8
  call void @_ZN4llvm7PHINode16setIncomingBlockEjPNS_10BasicBlockE(%"class.llvm::PHINode"* %this1, i32 %sub14, %"class.llvm::BasicBlock"* %17)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::ReturnInst"* @_ZN4llvm10ReturnInst6CreateERNS_11LLVMContextEPNS_5ValueEPNS_10BasicBlockE(%"class.llvm::LLVMContext"* %C, %"class.llvm::Value"* %retVal, %"class.llvm::BasicBlock"* %InsertAtEnd) #0 align 2 {
entry:
  %C.addr = alloca %"class.llvm::LLVMContext"*, align 8
  %retVal.addr = alloca %"class.llvm::Value"*, align 8
  %InsertAtEnd.addr = alloca %"class.llvm::BasicBlock"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.llvm::LLVMContext"* %C, %"class.llvm::LLVMContext"** %C.addr, align 8
  store %"class.llvm::Value"* %retVal, %"class.llvm::Value"** %retVal.addr, align 8
  store %"class.llvm::BasicBlock"* %InsertAtEnd, %"class.llvm::BasicBlock"** %InsertAtEnd.addr, align 8
  %0 = load %"class.llvm::Value"** %retVal.addr, align 8
  %tobool = icmp ne %"class.llvm::Value"* %0, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %conv = zext i1 %lnot1 to i32
  %call = call i8* @_ZN4llvm4UsernwEmj(i64 88, i32 %conv)
  %1 = bitcast i8* %call to %"class.llvm::ReturnInst"*
  %2 = load %"class.llvm::LLVMContext"** %C.addr, align 8
  %3 = load %"class.llvm::Value"** %retVal.addr, align 8
  %4 = load %"class.llvm::BasicBlock"** %InsertAtEnd.addr, align 8
  invoke void @_ZN4llvm10ReturnInstC1ERNS_11LLVMContextEPNS_5ValueEPNS_10BasicBlockE(%"class.llvm::ReturnInst"* %1, %"class.llvm::LLVMContext"* %2, %"class.llvm::Value"* %3, %"class.llvm::BasicBlock"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret %"class.llvm::ReturnInst"* %1

lpad:                                             ; preds = %entry
  %5 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot
  invoke void @_ZN4llvm4UserdlEPvj(i8* %call, i32 %conv)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont2
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3

terminate.lpad:                                   ; preds = %lpad
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  call void @__clang_call_terminate(i8* %9) #13
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev(%"class.std::vector.72"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.72"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector.72"* %this, %"class.std::vector.72"** %this.addr, align 8
  %this1 = load %"class.std::vector.72"** %this.addr
  %0 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.73"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"class.llvm::Value"*** %_M_start, align 8
  %2 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.73"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load %"class.llvm::Value"*** %_M_finish, align 8
  %4 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %call = invoke %"class.std::allocator.74"* @_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.73"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZSt8_DestroyIPPN4llvm5ValueES2_EvT_S4_RSaIT0_E(%"class.llvm::Value"** %1, %"class.llvm::Value"** %3, %"class.std::allocator.74"* %call)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %5 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  call void @_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EED2Ev(%"struct.std::_Vector_base.73"* %5)
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %6 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot
  %9 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  invoke void @_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EED2Ev(%"struct.std::_Vector_base.73"* %9)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont4
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad
  %10 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #13
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIPN4llvm8ConstantESaIS2_EED2Ev(%"class.std::vector.66"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.66"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector.66"* %this, %"class.std::vector.66"** %this.addr, align 8
  %this1 = load %"class.std::vector.66"** %this.addr
  %0 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.67"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"class.llvm::Constant"*** %_M_start, align 8
  %2 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.67"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load %"class.llvm::Constant"*** %_M_finish, align 8
  %4 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %call = invoke %"class.std::allocator.68"* @_ZNSt12_Vector_baseIPN4llvm8ConstantESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.67"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZSt8_DestroyIPPN4llvm8ConstantES2_EvT_S4_RSaIT0_E(%"class.llvm::Constant"** %1, %"class.llvm::Constant"** %3, %"class.std::allocator.68"* %call)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %5 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  call void @_ZNSt12_Vector_baseIPN4llvm8ConstantESaIS2_EED2Ev(%"struct.std::_Vector_base.67"* %5)
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %6 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot
  %9 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  invoke void @_ZNSt12_Vector_baseIPN4llvm8ConstantESaIS2_EED2Ev(%"struct.std::_Vector_base.67"* %9)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont4
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad
  %10 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #13
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIPN4llvm4TypeESaIS2_EED2Ev(%"class.std::vector.56"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.56"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector.56"* %this, %"class.std::vector.56"** %this.addr, align 8
  %this1 = load %"class.std::vector.56"** %this.addr
  %0 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.57"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"class.llvm::Type"*** %_M_start, align 8
  %2 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.57"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load %"class.llvm::Type"*** %_M_finish, align 8
  %4 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %call = invoke %"class.std::allocator.58"* @_ZNSt12_Vector_baseIPN4llvm4TypeESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.57"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZSt8_DestroyIPPN4llvm4TypeES2_EvT_S4_RSaIT0_E(%"class.llvm::Type"** %1, %"class.llvm::Type"** %3, %"class.std::allocator.58"* %call)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %5 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  call void @_ZNSt12_Vector_baseIPN4llvm4TypeESaIS2_EED2Ev(%"struct.std::_Vector_base.57"* %5)
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %6 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot
  %9 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  invoke void @_ZNSt12_Vector_baseIPN4llvm4TypeESaIS2_EED2Ev(%"struct.std::_Vector_base.57"* %9)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont4
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad
  %10 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #13
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE5emptyEv(%"class.std::vector.72"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.72"*, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector.72"* %this, %"class.std::vector.72"** %this.addr, align 8
  %this1 = load %"class.std::vector.72"** %this.addr
  %call = call %"class.llvm::Value"** @_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE5beginEv(%"class.std::vector.72"* %this1)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator"* %ref.tmp, i32 0, i32 0
  store %"class.llvm::Value"** %call, %"class.llvm::Value"*** %coerce.dive
  %call3 = call %"class.llvm::Value"** @_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE3endEv(%"class.std::vector.72"* %this1)
  %coerce.dive4 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %ref.tmp2, i32 0, i32 0
  store %"class.llvm::Value"** %call3, %"class.llvm::Value"*** %coerce.dive4
  %call5 = call zeroext i1 @_ZN9__gnu_cxxeqIPKPN4llvm5ValueESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(%"class.__gnu_cxx::__normal_iterator"* %ref.tmp, %"class.__gnu_cxx::__normal_iterator"* %ref.tmp2)
  ret i1 %call5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Value"** @_ZNKSt6vectorIPN4llvm5ValueESaIS2_EEixEm(%"class.std::vector.72"* %this, i64 %__n) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.72"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector.72"* %this, %"class.std::vector.72"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector.72"** %this.addr
  %0 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.73"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"class.llvm::Value"*** %_M_start, align 8
  %2 = load i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"class.llvm::Value"** %1, i64 %2
  ret %"class.llvm::Value"** %add.ptr
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE4sizeEv(%"class.std::vector.72"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.72"*, align 8
  store %"class.std::vector.72"* %this, %"class.std::vector.72"** %this.addr, align 8
  %this1 = load %"class.std::vector.72"** %this.addr
  %0 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.73"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %"class.llvm::Value"*** %_M_finish, align 8
  %2 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.73"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load %"class.llvm::Value"*** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.llvm::Value"** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.llvm::Value"** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: inlinehint uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxeqIPKPN4llvm5ValueESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(%"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"* %__rhs) #8 {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call %"class.llvm::Value"*** @_ZNK9__gnu_cxx17__normal_iteratorIPKPN4llvm5ValueESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0)
  %1 = load %"class.llvm::Value"*** %call
  %2 = load %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call %"class.llvm::Value"*** @_ZNK9__gnu_cxx17__normal_iteratorIPKPN4llvm5ValueESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2)
  %3 = load %"class.llvm::Value"*** %call1
  %cmp = icmp eq %"class.llvm::Value"** %1, %3
  ret i1 %cmp
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Value"** @_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE5beginEv(%"class.std::vector.72"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector.72"*, align 8
  %ref.tmp = alloca %"class.llvm::Value"**, align 8
  store %"class.std::vector.72"* %this, %"class.std::vector.72"** %this.addr, align 8
  %this1 = load %"class.std::vector.72"** %this.addr
  %0 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.73"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"class.llvm::Value"*** %_M_start, align 8
  store %"class.llvm::Value"** %1, %"class.llvm::Value"*** %ref.tmp
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKPN4llvm5ValueESt6vectorIS3_SaIS3_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator"* %retval, %"class.llvm::Value"*** %ref.tmp)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %2 = load %"class.llvm::Value"*** %coerce.dive
  ret %"class.llvm::Value"** %2
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Value"** @_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE3endEv(%"class.std::vector.72"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector.72"*, align 8
  %ref.tmp = alloca %"class.llvm::Value"**, align 8
  store %"class.std::vector.72"* %this, %"class.std::vector.72"** %this.addr, align 8
  %this1 = load %"class.std::vector.72"** %this.addr
  %0 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.73"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %"class.llvm::Value"*** %_M_finish, align 8
  store %"class.llvm::Value"** %1, %"class.llvm::Value"*** %ref.tmp
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKPN4llvm5ValueESt6vectorIS3_SaIS3_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator"* %retval, %"class.llvm::Value"*** %ref.tmp)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %2 = load %"class.llvm::Value"*** %coerce.dive
  ret %"class.llvm::Value"** %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPKPN4llvm5ValueESt6vectorIS3_SaIS3_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator"* %this, %"class.llvm::Value"*** %__i) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__i.addr = alloca %"class.llvm::Value"***, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  store %"class.llvm::Value"*** %__i, %"class.llvm::Value"**** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::Value"**** %__i.addr, align 8
  %1 = load %"class.llvm::Value"*** %0, align 8
  store %"class.llvm::Value"** %1, %"class.llvm::Value"*** %_M_current, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Value"*** @_ZNK9__gnu_cxx17__normal_iteratorIPKPN4llvm5ValueESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  ret %"class.llvm::Value"*** %_M_current
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm5ValueEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator.74"* %__a, %"class.llvm::Value"** %__p, %"class.llvm::Value"** %__arg) #0 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.74"*, align 8
  %__p.addr = alloca %"class.llvm::Value"**, align 8
  %__arg.addr = alloca %"class.llvm::Value"**, align 8
  store %"class.std::allocator.74"* %__a, %"class.std::allocator.74"** %__a.addr, align 8
  store %"class.llvm::Value"** %__p, %"class.llvm::Value"*** %__p.addr, align 8
  store %"class.llvm::Value"** %__arg, %"class.llvm::Value"*** %__arg.addr, align 8
  %0 = load %"class.std::allocator.74"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.74"* %0 to %"class.__gnu_cxx::new_allocator.75"*
  %2 = load %"class.llvm::Value"*** %__p.addr, align 8
  %3 = load %"class.llvm::Value"*** %__arg.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPN4llvm5ValueEE9constructEPS3_RKS3_(%"class.__gnu_cxx::new_allocator.75"* %1, %"class.llvm::Value"** %2, %"class.llvm::Value"** %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIPN4llvm5ValueESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_(%"class.std::vector.72"* %this, %"class.llvm::Value"** %__position.coerce, %"class.llvm::Value"** %__x) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.72"*, align 8
  %__position = alloca %"class.__gnu_cxx::__normal_iterator.78", align 8
  %__x.addr = alloca %"class.llvm::Value"**, align 8
  %__x_copy = alloca %"class.llvm::Value"*, align 8
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.78", align 8
  %__new_start = alloca %"class.llvm::Value"**, align 8
  %__new_finish = alloca %"class.llvm::Value"**, align 8
  store %"class.std::vector.72"* %this, %"class.std::vector.72"** %this.addr, align 8
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.78"* %__position, i32 0, i32 0
  store %"class.llvm::Value"** %__position.coerce, %"class.llvm::Value"*** %coerce.dive
  store %"class.llvm::Value"** %__x, %"class.llvm::Value"*** %__x.addr, align 8
  %this1 = load %"class.std::vector.72"** %this.addr
  %0 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.73"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %"class.llvm::Value"*** %_M_finish, align 8
  %2 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.73"* %2, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %3 = load %"class.llvm::Value"*** %_M_end_of_storage, align 8
  %cmp = icmp ne %"class.llvm::Value"** %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.73"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl3 to %"class.std::allocator.74"*
  %6 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.73"* %6, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  %7 = load %"class.llvm::Value"*** %_M_finish5, align 8
  %8 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.73"* %8, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %9 = load %"class.llvm::Value"*** %_M_finish7, align 8
  %add.ptr = getelementptr inbounds %"class.llvm::Value"** %9, i64 -1
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm5ValueEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator.74"* %5, %"class.llvm::Value"** %7, %"class.llvm::Value"** %add.ptr)
  %10 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl8 = getelementptr inbounds %"struct.std::_Vector_base.73"* %10, i32 0, i32 0
  %_M_finish9 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl8, i32 0, i32 1
  %11 = load %"class.llvm::Value"*** %_M_finish9, align 8
  %incdec.ptr = getelementptr inbounds %"class.llvm::Value"** %11, i32 1
  store %"class.llvm::Value"** %incdec.ptr, %"class.llvm::Value"*** %_M_finish9, align 8
  %12 = load %"class.llvm::Value"*** %__x.addr, align 8
  %13 = load %"class.llvm::Value"** %12, align 8
  store %"class.llvm::Value"* %13, %"class.llvm::Value"** %__x_copy, align 8
  %call = call %"class.llvm::Value"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm5ValueESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.78"* %__position)
  %14 = load %"class.llvm::Value"*** %call
  %15 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl10 = getelementptr inbounds %"struct.std::_Vector_base.73"* %15, i32 0, i32 0
  %_M_finish11 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl10, i32 0, i32 1
  %16 = load %"class.llvm::Value"*** %_M_finish11, align 8
  %add.ptr12 = getelementptr inbounds %"class.llvm::Value"** %16, i64 -2
  %17 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base.73"* %17, i32 0, i32 0
  %_M_finish14 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl13, i32 0, i32 1
  %18 = load %"class.llvm::Value"*** %_M_finish14, align 8
  %add.ptr15 = getelementptr inbounds %"class.llvm::Value"** %18, i64 -1
  %call16 = call %"class.llvm::Value"** @_ZSt13copy_backwardIPPN4llvm5ValueES3_ET0_T_S5_S4_(%"class.llvm::Value"** %14, %"class.llvm::Value"** %add.ptr12, %"class.llvm::Value"** %add.ptr15)
  %19 = load %"class.llvm::Value"** %__x_copy, align 8
  %call17 = call %"class.llvm::Value"** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm5ValueESt6vectorIS3_SaIS3_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.78"* %__position)
  store %"class.llvm::Value"* %19, %"class.llvm::Value"** %call17
  br label %if.end

if.else:                                          ; preds = %entry
  %call18 = call i64 @_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE12_M_check_lenEmPKc(%"class.std::vector.72"* %this1, i64 1, i8* getelementptr inbounds ([22 x i8]* @.str27, i32 0, i32 0))
  store i64 %call18, i64* %__len, align 8
  %call19 = call %"class.llvm::Value"** @_ZNSt6vectorIPN4llvm5ValueESaIS2_EE5beginEv(%"class.std::vector.72"* %this1)
  %coerce.dive20 = getelementptr %"class.__gnu_cxx::__normal_iterator.78"* %ref.tmp, i32 0, i32 0
  store %"class.llvm::Value"** %call19, %"class.llvm::Value"*** %coerce.dive20
  %call21 = call i64 @_ZN9__gnu_cxxmiIPPN4llvm5ValueESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(%"class.__gnu_cxx::__normal_iterator.78"* %__position, %"class.__gnu_cxx::__normal_iterator.78"* %ref.tmp)
  store i64 %call21, i64* %__elems_before, align 8
  %20 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %21 = load i64* %__len, align 8
  %call22 = call %"class.llvm::Value"** @_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EE11_M_allocateEm(%"struct.std::_Vector_base.73"* %20, i64 %21)
  store %"class.llvm::Value"** %call22, %"class.llvm::Value"*** %__new_start, align 8
  %22 = load %"class.llvm::Value"*** %__new_start, align 8
  store %"class.llvm::Value"** %22, %"class.llvm::Value"*** %__new_finish, align 8
  %23 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl23 = getelementptr inbounds %"struct.std::_Vector_base.73"* %23, i32 0, i32 0
  %24 = bitcast %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl23 to %"class.std::allocator.74"*
  %25 = load %"class.llvm::Value"*** %__new_start, align 8
  %26 = load i64* %__elems_before, align 8
  %add.ptr24 = getelementptr inbounds %"class.llvm::Value"** %25, i64 %26
  %27 = load %"class.llvm::Value"*** %__x.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm5ValueEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator.74"* %24, %"class.llvm::Value"** %add.ptr24, %"class.llvm::Value"** %27)
  store %"class.llvm::Value"** null, %"class.llvm::Value"*** %__new_finish, align 8
  %28 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl25 = getelementptr inbounds %"struct.std::_Vector_base.73"* %28, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl25, i32 0, i32 0
  %29 = load %"class.llvm::Value"*** %_M_start, align 8
  %call26 = call %"class.llvm::Value"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm5ValueESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.78"* %__position)
  %30 = load %"class.llvm::Value"*** %call26
  %31 = load %"class.llvm::Value"*** %__new_start, align 8
  %32 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %call27 = call %"class.std::allocator.74"* @_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.73"* %32)
  %call28 = call %"class.llvm::Value"** @_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm5ValueES3_SaIS2_EET0_T_S6_S5_RT1_(%"class.llvm::Value"** %29, %"class.llvm::Value"** %30, %"class.llvm::Value"** %31, %"class.std::allocator.74"* %call27)
  store %"class.llvm::Value"** %call28, %"class.llvm::Value"*** %__new_finish, align 8
  %33 = load %"class.llvm::Value"*** %__new_finish, align 8
  %incdec.ptr29 = getelementptr inbounds %"class.llvm::Value"** %33, i32 1
  store %"class.llvm::Value"** %incdec.ptr29, %"class.llvm::Value"*** %__new_finish, align 8
  %call30 = call %"class.llvm::Value"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm5ValueESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.78"* %__position)
  %34 = load %"class.llvm::Value"*** %call30
  %35 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl31 = getelementptr inbounds %"struct.std::_Vector_base.73"* %35, i32 0, i32 0
  %_M_finish32 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl31, i32 0, i32 1
  %36 = load %"class.llvm::Value"*** %_M_finish32, align 8
  %37 = load %"class.llvm::Value"*** %__new_finish, align 8
  %38 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %call33 = call %"class.std::allocator.74"* @_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.73"* %38)
  %call34 = call %"class.llvm::Value"** @_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm5ValueES3_SaIS2_EET0_T_S6_S5_RT1_(%"class.llvm::Value"** %34, %"class.llvm::Value"** %36, %"class.llvm::Value"** %37, %"class.std::allocator.74"* %call33)
  store %"class.llvm::Value"** %call34, %"class.llvm::Value"*** %__new_finish, align 8
  %39 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl35 = getelementptr inbounds %"struct.std::_Vector_base.73"* %39, i32 0, i32 0
  %_M_start36 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl35, i32 0, i32 0
  %40 = load %"class.llvm::Value"*** %_M_start36, align 8
  %41 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl37 = getelementptr inbounds %"struct.std::_Vector_base.73"* %41, i32 0, i32 0
  %_M_finish38 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl37, i32 0, i32 1
  %42 = load %"class.llvm::Value"*** %_M_finish38, align 8
  %43 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %call39 = call %"class.std::allocator.74"* @_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.73"* %43)
  call void @_ZSt8_DestroyIPPN4llvm5ValueES2_EvT_S4_RSaIT0_E(%"class.llvm::Value"** %40, %"class.llvm::Value"** %42, %"class.std::allocator.74"* %call39)
  %44 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %45 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl40 = getelementptr inbounds %"struct.std::_Vector_base.73"* %45, i32 0, i32 0
  %_M_start41 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl40, i32 0, i32 0
  %46 = load %"class.llvm::Value"*** %_M_start41, align 8
  %47 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl42 = getelementptr inbounds %"struct.std::_Vector_base.73"* %47, i32 0, i32 0
  %_M_end_of_storage43 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl42, i32 0, i32 2
  %48 = load %"class.llvm::Value"*** %_M_end_of_storage43, align 8
  %49 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl44 = getelementptr inbounds %"struct.std::_Vector_base.73"* %49, i32 0, i32 0
  %_M_start45 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl44, i32 0, i32 0
  %50 = load %"class.llvm::Value"*** %_M_start45, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.llvm::Value"** %48 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.llvm::Value"** %50 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  call void @_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base.73"* %44, %"class.llvm::Value"** %46, i64 %sub.ptr.div)
  %51 = load %"class.llvm::Value"*** %__new_start, align 8
  %52 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl46 = getelementptr inbounds %"struct.std::_Vector_base.73"* %52, i32 0, i32 0
  %_M_start47 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl46, i32 0, i32 0
  store %"class.llvm::Value"** %51, %"class.llvm::Value"*** %_M_start47, align 8
  %53 = load %"class.llvm::Value"*** %__new_finish, align 8
  %54 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl48 = getelementptr inbounds %"struct.std::_Vector_base.73"* %54, i32 0, i32 0
  %_M_finish49 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl48, i32 0, i32 1
  store %"class.llvm::Value"** %53, %"class.llvm::Value"*** %_M_finish49, align 8
  %55 = load %"class.llvm::Value"*** %__new_start, align 8
  %56 = load i64* %__len, align 8
  %add.ptr50 = getelementptr inbounds %"class.llvm::Value"** %55, i64 %56
  %57 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl51 = getelementptr inbounds %"struct.std::_Vector_base.73"* %57, i32 0, i32 0
  %_M_end_of_storage52 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl51, i32 0, i32 2
  store %"class.llvm::Value"** %add.ptr50, %"class.llvm::Value"*** %_M_end_of_storage52, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Value"** @_ZNSt6vectorIPN4llvm5ValueESaIS2_EE3endEv(%"class.std::vector.72"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.78", align 8
  %this.addr = alloca %"class.std::vector.72"*, align 8
  store %"class.std::vector.72"* %this, %"class.std::vector.72"** %this.addr, align 8
  %this1 = load %"class.std::vector.72"** %this.addr
  %0 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.73"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPN4llvm5ValueESt6vectorIS3_SaIS3_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.78"* %retval, %"class.llvm::Value"*** %_M_finish)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.78"* %retval, i32 0, i32 0
  %1 = load %"class.llvm::Value"*** %coerce.dive
  ret %"class.llvm::Value"** %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPPN4llvm5ValueESt6vectorIS3_SaIS3_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.78"* %this, %"class.llvm::Value"*** %__i) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.78"*, align 8
  %__i.addr = alloca %"class.llvm::Value"***, align 8
  store %"class.__gnu_cxx::__normal_iterator.78"* %this, %"class.__gnu_cxx::__normal_iterator.78"** %this.addr, align 8
  store %"class.llvm::Value"*** %__i, %"class.llvm::Value"**** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.78"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.78"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::Value"**** %__i.addr, align 8
  %1 = load %"class.llvm::Value"*** %0, align 8
  store %"class.llvm::Value"** %1, %"class.llvm::Value"*** %_M_current, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Value"** @_ZSt13copy_backwardIPPN4llvm5ValueES3_ET0_T_S5_S4_(%"class.llvm::Value"** %__first, %"class.llvm::Value"** %__last, %"class.llvm::Value"** %__result) #0 {
entry:
  %__first.addr = alloca %"class.llvm::Value"**, align 8
  %__last.addr = alloca %"class.llvm::Value"**, align 8
  %__result.addr = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %__first, %"class.llvm::Value"*** %__first.addr, align 8
  store %"class.llvm::Value"** %__last, %"class.llvm::Value"*** %__last.addr, align 8
  store %"class.llvm::Value"** %__result, %"class.llvm::Value"*** %__result.addr, align 8
  %0 = load %"class.llvm::Value"*** %__first.addr, align 8
  %call = call %"class.llvm::Value"** @_ZSt12__miter_baseIPPN4llvm5ValueEENSt11_Miter_baseIT_E13iterator_typeES5_(%"class.llvm::Value"** %0)
  %1 = load %"class.llvm::Value"*** %__last.addr, align 8
  %call1 = call %"class.llvm::Value"** @_ZSt12__miter_baseIPPN4llvm5ValueEENSt11_Miter_baseIT_E13iterator_typeES5_(%"class.llvm::Value"** %1)
  %2 = load %"class.llvm::Value"*** %__result.addr, align 8
  %call2 = call %"class.llvm::Value"** @_ZSt23__copy_move_backward_a2ILb0EPPN4llvm5ValueES3_ET1_T0_S5_S4_(%"class.llvm::Value"** %call, %"class.llvm::Value"** %call1, %"class.llvm::Value"** %2)
  ret %"class.llvm::Value"** %call2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Value"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm5ValueESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.78"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.78"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.78"* %this, %"class.__gnu_cxx::__normal_iterator.78"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.78"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.78"* %this1, i32 0, i32 0
  ret %"class.llvm::Value"*** %_M_current
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Value"** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm5ValueESt6vectorIS3_SaIS3_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.78"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.78"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.78"* %this, %"class.__gnu_cxx::__normal_iterator.78"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.78"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.78"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::Value"*** %_M_current, align 8
  ret %"class.llvm::Value"** %0
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE12_M_check_lenEmPKc(%"class.std::vector.72"* %this, i64 %__n, i8* %__s) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.72"*, align 8
  %__n.addr = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  %__len = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store %"class.std::vector.72"* %this, %"class.std::vector.72"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %this1 = load %"class.std::vector.72"** %this.addr
  %call = call i64 @_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE8max_sizeEv(%"class.std::vector.72"* %this1)
  %call2 = call i64 @_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE4sizeEv(%"class.std::vector.72"* %this1)
  %sub = sub i64 %call, %call2
  %0 = load i64* %__n.addr, align 8
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8** %__s.addr, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %1) #17
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call i64 @_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE4sizeEv(%"class.std::vector.72"* %this1)
  %call4 = call i64 @_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE4sizeEv(%"class.std::vector.72"* %this1)
  store i64 %call4, i64* %ref.tmp
  %call5 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %ref.tmp, i64* %__n.addr)
  %2 = load i64* %call5
  %add = add i64 %call3, %2
  store i64 %add, i64* %__len, align 8
  %3 = load i64* %__len, align 8
  %call6 = call i64 @_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE4sizeEv(%"class.std::vector.72"* %this1)
  %cmp7 = icmp ult i64 %3, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64* %__len, align 8
  %call8 = call i64 @_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE8max_sizeEv(%"class.std::vector.72"* %this1)
  %cmp9 = icmp ugt i64 %4, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call i64 @_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE8max_sizeEv(%"class.std::vector.72"* %this1)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load i64* %__len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %5, %cond.false ]
  ret i64 %cond
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPPN4llvm5ValueESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(%"class.__gnu_cxx::__normal_iterator.78"* %__lhs, %"class.__gnu_cxx::__normal_iterator.78"* %__rhs) #8 {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.78"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.78"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.78"* %__lhs, %"class.__gnu_cxx::__normal_iterator.78"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator.78"* %__rhs, %"class.__gnu_cxx::__normal_iterator.78"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator.78"** %__lhs.addr, align 8
  %call = call %"class.llvm::Value"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm5ValueESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.78"* %0)
  %1 = load %"class.llvm::Value"*** %call
  %2 = load %"class.__gnu_cxx::__normal_iterator.78"** %__rhs.addr, align 8
  %call1 = call %"class.llvm::Value"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm5ValueESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.78"* %2)
  %3 = load %"class.llvm::Value"*** %call1
  %sub.ptr.lhs.cast = ptrtoint %"class.llvm::Value"** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.llvm::Value"** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Value"** @_ZNSt6vectorIPN4llvm5ValueESaIS2_EE5beginEv(%"class.std::vector.72"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.78", align 8
  %this.addr = alloca %"class.std::vector.72"*, align 8
  store %"class.std::vector.72"* %this, %"class.std::vector.72"** %this.addr, align 8
  %this1 = load %"class.std::vector.72"** %this.addr
  %0 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.73"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPN4llvm5ValueESt6vectorIS3_SaIS3_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.78"* %retval, %"class.llvm::Value"*** %_M_start)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.78"* %retval, i32 0, i32 0
  %1 = load %"class.llvm::Value"*** %coerce.dive
  ret %"class.llvm::Value"** %1
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Value"** @_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EE11_M_allocateEm(%"struct.std::_Vector_base.73"* %this, i64 %__n) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.73"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base.73"* %this, %"struct.std::_Vector_base.73"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base.73"** %this.addr
  %0 = load i64* %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.73"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl to %"class.std::allocator.74"*
  %2 = load i64* %__n.addr, align 8
  %call = call %"class.llvm::Value"** @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm5ValueEEE8allocateERS4_m(%"class.std::allocator.74"* %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"class.llvm::Value"** [ %call, %cond.true ], [ null, %cond.false ]
  ret %"class.llvm::Value"** %cond
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Value"** @_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm5ValueES3_SaIS2_EET0_T_S6_S5_RT1_(%"class.llvm::Value"** %__first, %"class.llvm::Value"** %__last, %"class.llvm::Value"** %__result, %"class.std::allocator.74"* %__alloc) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Value"**, align 8
  %__last.addr = alloca %"class.llvm::Value"**, align 8
  %__result.addr = alloca %"class.llvm::Value"**, align 8
  %__alloc.addr = alloca %"class.std::allocator.74"*, align 8
  store %"class.llvm::Value"** %__first, %"class.llvm::Value"*** %__first.addr, align 8
  store %"class.llvm::Value"** %__last, %"class.llvm::Value"*** %__last.addr, align 8
  store %"class.llvm::Value"** %__result, %"class.llvm::Value"*** %__result.addr, align 8
  store %"class.std::allocator.74"* %__alloc, %"class.std::allocator.74"** %__alloc.addr, align 8
  %0 = load %"class.llvm::Value"*** %__first.addr, align 8
  %1 = load %"class.llvm::Value"*** %__last.addr, align 8
  %2 = load %"class.llvm::Value"*** %__result.addr, align 8
  %3 = load %"class.std::allocator.74"** %__alloc.addr, align 8
  %call = call %"class.llvm::Value"** @_ZSt22__uninitialized_copy_aIPPN4llvm5ValueES3_S2_ET0_T_S5_S4_RSaIT1_E(%"class.llvm::Value"** %0, %"class.llvm::Value"** %1, %"class.llvm::Value"** %2, %"class.std::allocator.74"* %3)
  ret %"class.llvm::Value"** %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.74"* @_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.73"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.73"*, align 8
  store %"struct.std::_Vector_base.73"* %this, %"struct.std::_Vector_base.73"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.73"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.73"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl to %"class.std::allocator.74"*
  ret %"class.std::allocator.74"* %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPPN4llvm5ValueES2_EvT_S4_RSaIT0_E(%"class.llvm::Value"** %__first, %"class.llvm::Value"** %__last, %"class.std::allocator.74"*) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Value"**, align 8
  %__last.addr = alloca %"class.llvm::Value"**, align 8
  %.addr = alloca %"class.std::allocator.74"*, align 8
  store %"class.llvm::Value"** %__first, %"class.llvm::Value"*** %__first.addr, align 8
  store %"class.llvm::Value"** %__last, %"class.llvm::Value"*** %__last.addr, align 8
  store %"class.std::allocator.74"* %0, %"class.std::allocator.74"** %.addr, align 8
  %1 = load %"class.llvm::Value"*** %__first.addr, align 8
  %2 = load %"class.llvm::Value"*** %__last.addr, align 8
  call void @_ZSt8_DestroyIPPN4llvm5ValueEEvT_S4_(%"class.llvm::Value"** %1, %"class.llvm::Value"** %2)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base.73"* %this, %"class.llvm::Value"** %__p, i64 %__n) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.73"*, align 8
  %__p.addr = alloca %"class.llvm::Value"**, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base.73"* %this, %"struct.std::_Vector_base.73"** %this.addr, align 8
  store %"class.llvm::Value"** %__p, %"class.llvm::Value"*** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base.73"** %this.addr
  %0 = load %"class.llvm::Value"*** %__p.addr, align 8
  %tobool = icmp ne %"class.llvm::Value"** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.73"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl to %"class.std::allocator.74"*
  %2 = load %"class.llvm::Value"*** %__p.addr, align 8
  %3 = load i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm5ValueEEE10deallocateERS4_PS3_m(%"class.std::allocator.74"* %1, %"class.llvm::Value"** %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm5ValueEEE10deallocateERS4_PS3_m(%"class.std::allocator.74"* %__a, %"class.llvm::Value"** %__p, i64 %__n) #0 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.74"*, align 8
  %__p.addr = alloca %"class.llvm::Value"**, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.74"* %__a, %"class.std::allocator.74"** %__a.addr, align 8
  store %"class.llvm::Value"** %__p, %"class.llvm::Value"*** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.74"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.74"* %0 to %"class.__gnu_cxx::new_allocator.75"*
  %2 = load %"class.llvm::Value"*** %__p.addr, align 8
  %3 = load i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPN4llvm5ValueEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator.75"* %1, %"class.llvm::Value"** %2, i64 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPN4llvm5ValueEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator.75"* %this, %"class.llvm::Value"** %__p, i64) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.75"*, align 8
  %__p.addr = alloca %"class.llvm::Value"**, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.75"* %this, %"class.__gnu_cxx::new_allocator.75"** %this.addr, align 8
  store %"class.llvm::Value"** %__p, %"class.llvm::Value"*** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.75"** %this.addr
  %1 = load %"class.llvm::Value"*** %__p.addr, align 8
  %2 = bitcast %"class.llvm::Value"** %1 to i8*
  call void @_ZdlPv(i8* %2) #7
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPPN4llvm5ValueEEvT_S4_(%"class.llvm::Value"** %__first, %"class.llvm::Value"** %__last) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Value"**, align 8
  %__last.addr = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %__first, %"class.llvm::Value"*** %__first.addr, align 8
  store %"class.llvm::Value"** %__last, %"class.llvm::Value"*** %__last.addr, align 8
  %0 = load %"class.llvm::Value"*** %__first.addr, align 8
  %1 = load %"class.llvm::Value"*** %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPN4llvm5ValueEEEvT_S6_(%"class.llvm::Value"** %0, %"class.llvm::Value"** %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPN4llvm5ValueEEEvT_S6_(%"class.llvm::Value"**, %"class.llvm::Value"**) #5 align 2 {
entry:
  %.addr = alloca %"class.llvm::Value"**, align 8
  %.addr1 = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %0, %"class.llvm::Value"*** %.addr, align 8
  store %"class.llvm::Value"** %1, %"class.llvm::Value"*** %.addr1, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Value"** @_ZSt22__uninitialized_copy_aIPPN4llvm5ValueES3_S2_ET0_T_S5_S4_RSaIT1_E(%"class.llvm::Value"** %__first, %"class.llvm::Value"** %__last, %"class.llvm::Value"** %__result, %"class.std::allocator.74"*) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Value"**, align 8
  %__last.addr = alloca %"class.llvm::Value"**, align 8
  %__result.addr = alloca %"class.llvm::Value"**, align 8
  %.addr = alloca %"class.std::allocator.74"*, align 8
  store %"class.llvm::Value"** %__first, %"class.llvm::Value"*** %__first.addr, align 8
  store %"class.llvm::Value"** %__last, %"class.llvm::Value"*** %__last.addr, align 8
  store %"class.llvm::Value"** %__result, %"class.llvm::Value"*** %__result.addr, align 8
  store %"class.std::allocator.74"* %0, %"class.std::allocator.74"** %.addr, align 8
  %1 = load %"class.llvm::Value"*** %__first.addr, align 8
  %2 = load %"class.llvm::Value"*** %__last.addr, align 8
  %3 = load %"class.llvm::Value"*** %__result.addr, align 8
  %call = call %"class.llvm::Value"** @_ZSt18uninitialized_copyIPPN4llvm5ValueES3_ET0_T_S5_S4_(%"class.llvm::Value"** %1, %"class.llvm::Value"** %2, %"class.llvm::Value"** %3)
  ret %"class.llvm::Value"** %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Value"** @_ZSt18uninitialized_copyIPPN4llvm5ValueES3_ET0_T_S5_S4_(%"class.llvm::Value"** %__first, %"class.llvm::Value"** %__last, %"class.llvm::Value"** %__result) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Value"**, align 8
  %__last.addr = alloca %"class.llvm::Value"**, align 8
  %__result.addr = alloca %"class.llvm::Value"**, align 8
  %__assignable = alloca i8, align 1
  store %"class.llvm::Value"** %__first, %"class.llvm::Value"*** %__first.addr, align 8
  store %"class.llvm::Value"** %__last, %"class.llvm::Value"*** %__last.addr, align 8
  store %"class.llvm::Value"** %__result, %"class.llvm::Value"*** %__result.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = load %"class.llvm::Value"*** %__first.addr, align 8
  %1 = load %"class.llvm::Value"*** %__last.addr, align 8
  %2 = load %"class.llvm::Value"*** %__result.addr, align 8
  %call = call %"class.llvm::Value"** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPPN4llvm5ValueES5_EET0_T_S7_S6_(%"class.llvm::Value"** %0, %"class.llvm::Value"** %1, %"class.llvm::Value"** %2)
  ret %"class.llvm::Value"** %call
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Value"** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPPN4llvm5ValueES5_EET0_T_S7_S6_(%"class.llvm::Value"** %__first, %"class.llvm::Value"** %__last, %"class.llvm::Value"** %__result) #0 align 2 {
entry:
  %__first.addr = alloca %"class.llvm::Value"**, align 8
  %__last.addr = alloca %"class.llvm::Value"**, align 8
  %__result.addr = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %__first, %"class.llvm::Value"*** %__first.addr, align 8
  store %"class.llvm::Value"** %__last, %"class.llvm::Value"*** %__last.addr, align 8
  store %"class.llvm::Value"** %__result, %"class.llvm::Value"*** %__result.addr, align 8
  %0 = load %"class.llvm::Value"*** %__first.addr, align 8
  %1 = load %"class.llvm::Value"*** %__last.addr, align 8
  %2 = load %"class.llvm::Value"*** %__result.addr, align 8
  %call = call %"class.llvm::Value"** @_ZSt4copyIPPN4llvm5ValueES3_ET0_T_S5_S4_(%"class.llvm::Value"** %0, %"class.llvm::Value"** %1, %"class.llvm::Value"** %2)
  ret %"class.llvm::Value"** %call
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Value"** @_ZSt4copyIPPN4llvm5ValueES3_ET0_T_S5_S4_(%"class.llvm::Value"** %__first, %"class.llvm::Value"** %__last, %"class.llvm::Value"** %__result) #0 {
entry:
  %__first.addr = alloca %"class.llvm::Value"**, align 8
  %__last.addr = alloca %"class.llvm::Value"**, align 8
  %__result.addr = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %__first, %"class.llvm::Value"*** %__first.addr, align 8
  store %"class.llvm::Value"** %__last, %"class.llvm::Value"*** %__last.addr, align 8
  store %"class.llvm::Value"** %__result, %"class.llvm::Value"*** %__result.addr, align 8
  %0 = load %"class.llvm::Value"*** %__first.addr, align 8
  %call = call %"class.llvm::Value"** @_ZSt12__miter_baseIPPN4llvm5ValueEENSt11_Miter_baseIT_E13iterator_typeES5_(%"class.llvm::Value"** %0)
  %1 = load %"class.llvm::Value"*** %__last.addr, align 8
  %call1 = call %"class.llvm::Value"** @_ZSt12__miter_baseIPPN4llvm5ValueEENSt11_Miter_baseIT_E13iterator_typeES5_(%"class.llvm::Value"** %1)
  %2 = load %"class.llvm::Value"*** %__result.addr, align 8
  %call2 = call %"class.llvm::Value"** @_ZSt14__copy_move_a2ILb0EPPN4llvm5ValueES3_ET1_T0_S5_S4_(%"class.llvm::Value"** %call, %"class.llvm::Value"** %call1, %"class.llvm::Value"** %2)
  ret %"class.llvm::Value"** %call2
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Value"** @_ZSt14__copy_move_a2ILb0EPPN4llvm5ValueES3_ET1_T0_S5_S4_(%"class.llvm::Value"** %__first, %"class.llvm::Value"** %__last, %"class.llvm::Value"** %__result) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Value"**, align 8
  %__last.addr = alloca %"class.llvm::Value"**, align 8
  %__result.addr = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %__first, %"class.llvm::Value"*** %__first.addr, align 8
  store %"class.llvm::Value"** %__last, %"class.llvm::Value"*** %__last.addr, align 8
  store %"class.llvm::Value"** %__result, %"class.llvm::Value"*** %__result.addr, align 8
  %0 = load %"class.llvm::Value"*** %__first.addr, align 8
  %call = call %"class.llvm::Value"** @_ZSt12__niter_baseIPPN4llvm5ValueEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.llvm::Value"** %0)
  %1 = load %"class.llvm::Value"*** %__last.addr, align 8
  %call1 = call %"class.llvm::Value"** @_ZSt12__niter_baseIPPN4llvm5ValueEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.llvm::Value"** %1)
  %2 = load %"class.llvm::Value"*** %__result.addr, align 8
  %call2 = call %"class.llvm::Value"** @_ZSt12__niter_baseIPPN4llvm5ValueEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.llvm::Value"** %2)
  %call3 = call %"class.llvm::Value"** @_ZSt13__copy_move_aILb0EPPN4llvm5ValueES3_ET1_T0_S5_S4_(%"class.llvm::Value"** %call, %"class.llvm::Value"** %call1, %"class.llvm::Value"** %call2)
  ret %"class.llvm::Value"** %call3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Value"** @_ZSt12__miter_baseIPPN4llvm5ValueEENSt11_Miter_baseIT_E13iterator_typeES5_(%"class.llvm::Value"** %__it) #8 {
entry:
  %__it.addr = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %__it, %"class.llvm::Value"*** %__it.addr, align 8
  %0 = load %"class.llvm::Value"*** %__it.addr, align 8
  %call = call %"class.llvm::Value"** @_ZNSt10_Iter_baseIPPN4llvm5ValueELb0EE7_S_baseES3_(%"class.llvm::Value"** %0)
  ret %"class.llvm::Value"** %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Value"** @_ZNSt10_Iter_baseIPPN4llvm5ValueELb0EE7_S_baseES3_(%"class.llvm::Value"** %__it) #5 align 2 {
entry:
  %__it.addr = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %__it, %"class.llvm::Value"*** %__it.addr, align 8
  %0 = load %"class.llvm::Value"*** %__it.addr, align 8
  ret %"class.llvm::Value"** %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Value"** @_ZSt13__copy_move_aILb0EPPN4llvm5ValueES3_ET1_T0_S5_S4_(%"class.llvm::Value"** %__first, %"class.llvm::Value"** %__last, %"class.llvm::Value"** %__result) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Value"**, align 8
  %__last.addr = alloca %"class.llvm::Value"**, align 8
  %__result.addr = alloca %"class.llvm::Value"**, align 8
  %__simple = alloca i8, align 1
  store %"class.llvm::Value"** %__first, %"class.llvm::Value"*** %__first.addr, align 8
  store %"class.llvm::Value"** %__last, %"class.llvm::Value"*** %__last.addr, align 8
  store %"class.llvm::Value"** %__result, %"class.llvm::Value"*** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load %"class.llvm::Value"*** %__first.addr, align 8
  %1 = load %"class.llvm::Value"*** %__last.addr, align 8
  %2 = load %"class.llvm::Value"*** %__result.addr, align 8
  %call = call %"class.llvm::Value"** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN4llvm5ValueEEEPT_PKS6_S9_S7_(%"class.llvm::Value"** %0, %"class.llvm::Value"** %1, %"class.llvm::Value"** %2)
  ret %"class.llvm::Value"** %call
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"class.llvm::Value"** @_ZSt12__niter_baseIPPN4llvm5ValueEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.llvm::Value"** %__it) #9 {
entry:
  %__it.addr = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %__it, %"class.llvm::Value"*** %__it.addr, align 8
  %0 = load %"class.llvm::Value"*** %__it.addr, align 8
  %call = call %"class.llvm::Value"** @_ZNSt10_Iter_baseIPPN4llvm5ValueELb0EE7_S_baseES3_(%"class.llvm::Value"** %0)
  ret %"class.llvm::Value"** %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Value"** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN4llvm5ValueEEEPT_PKS6_S9_S7_(%"class.llvm::Value"** %__first, %"class.llvm::Value"** %__last, %"class.llvm::Value"** %__result) #5 align 2 {
entry:
  %__first.addr = alloca %"class.llvm::Value"**, align 8
  %__last.addr = alloca %"class.llvm::Value"**, align 8
  %__result.addr = alloca %"class.llvm::Value"**, align 8
  %_Num = alloca i64, align 8
  store %"class.llvm::Value"** %__first, %"class.llvm::Value"*** %__first.addr, align 8
  store %"class.llvm::Value"** %__last, %"class.llvm::Value"*** %__last.addr, align 8
  store %"class.llvm::Value"** %__result, %"class.llvm::Value"*** %__result.addr, align 8
  %0 = load %"class.llvm::Value"*** %__last.addr, align 8
  %1 = load %"class.llvm::Value"*** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.llvm::Value"** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.llvm::Value"** %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %"class.llvm::Value"*** %__result.addr, align 8
  %4 = bitcast %"class.llvm::Value"** %3 to i8*
  %5 = load %"class.llvm::Value"*** %__first.addr, align 8
  %6 = bitcast %"class.llvm::Value"** %5 to i8*
  %7 = load i64* %_Num, align 8
  %mul = mul i64 8, %7
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %4, i8* %6, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %"class.llvm::Value"*** %__result.addr, align 8
  %9 = load i64* %_Num, align 8
  %add.ptr = getelementptr inbounds %"class.llvm::Value"** %8, i64 %9
  ret %"class.llvm::Value"** %add.ptr
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Value"** @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm5ValueEEE8allocateERS4_m(%"class.std::allocator.74"* %__a, i64 %__n) #0 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.74"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.74"* %__a, %"class.std::allocator.74"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.74"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.74"* %0 to %"class.__gnu_cxx::new_allocator.75"*
  %2 = load i64* %__n.addr, align 8
  %call = call %"class.llvm::Value"** @_ZN9__gnu_cxx13new_allocatorIPN4llvm5ValueEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.75"* %1, i64 %2, i8* null)
  ret %"class.llvm::Value"** %call
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Value"** @_ZN9__gnu_cxx13new_allocatorIPN4llvm5ValueEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.75"* %this, i64 %__n, i8*) #0 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.75"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.75"* %this, %"class.__gnu_cxx::new_allocator.75"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.75"** %this.addr
  %1 = load i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIPN4llvm5ValueEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.75"* %this1) #7
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #17
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64* %__n.addr, align 8
  %mul = mul i64 %2, 8
  %call2 = call noalias i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %"class.llvm::Value"**
  ret %"class.llvm::Value"** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIPN4llvm5ValueEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.75"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.75"*, align 8
  store %"class.__gnu_cxx::new_allocator.75"* %this, %"class.__gnu_cxx::new_allocator.75"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.75"** %this.addr
  ret i64 2305843009213693951
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #10

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE8max_sizeEv(%"class.std::vector.72"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.72"*, align 8
  store %"class.std::vector.72"* %this, %"class.std::vector.72"** %this.addr, align 8
  %this1 = load %"class.std::vector.72"** %this.addr
  %0 = bitcast %"class.std::vector.72"* %this1 to %"struct.std::_Vector_base.73"*
  %call = call %"class.std::allocator.74"* @_ZNKSt12_Vector_baseIPN4llvm5ValueESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.73"* %0)
  %call2 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm5ValueEEE8max_sizeERKS4_(%"class.std::allocator.74"* %call)
  ret i64 %call2
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #10

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZSt3maxImERKT_S2_S2_(i64* %__a, i64* %__b) #5 {
entry:
  %retval = alloca i64*, align 8
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  store i64* %__a, i64** %__a.addr, align 8
  store i64* %__b, i64** %__b.addr, align 8
  %0 = load i64** %__a.addr, align 8
  %1 = load i64* %0, align 8
  %2 = load i64** %__b.addr, align 8
  %3 = load i64* %2, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64** %__b.addr, align 8
  store i64* %4, i64** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64** %__a.addr, align 8
  store i64* %5, i64** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i64** %retval
  ret i64* %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm5ValueEEE8max_sizeERKS4_(%"class.std::allocator.74"* %__a) #5 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.74"*, align 8
  store %"class.std::allocator.74"* %__a, %"class.std::allocator.74"** %__a.addr, align 8
  %0 = load %"class.std::allocator.74"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.74"* %0 to %"class.__gnu_cxx::new_allocator.75"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIPN4llvm5ValueEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.75"* %1) #7
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.74"* @_ZNKSt12_Vector_baseIPN4llvm5ValueESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.73"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.73"*, align 8
  store %"struct.std::_Vector_base.73"* %this, %"struct.std::_Vector_base.73"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.73"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.73"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl to %"class.std::allocator.74"*
  ret %"class.std::allocator.74"* %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Value"** @_ZSt23__copy_move_backward_a2ILb0EPPN4llvm5ValueES3_ET1_T0_S5_S4_(%"class.llvm::Value"** %__first, %"class.llvm::Value"** %__last, %"class.llvm::Value"** %__result) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Value"**, align 8
  %__last.addr = alloca %"class.llvm::Value"**, align 8
  %__result.addr = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %__first, %"class.llvm::Value"*** %__first.addr, align 8
  store %"class.llvm::Value"** %__last, %"class.llvm::Value"*** %__last.addr, align 8
  store %"class.llvm::Value"** %__result, %"class.llvm::Value"*** %__result.addr, align 8
  %0 = load %"class.llvm::Value"*** %__first.addr, align 8
  %call = call %"class.llvm::Value"** @_ZSt12__niter_baseIPPN4llvm5ValueEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.llvm::Value"** %0)
  %1 = load %"class.llvm::Value"*** %__last.addr, align 8
  %call1 = call %"class.llvm::Value"** @_ZSt12__niter_baseIPPN4llvm5ValueEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.llvm::Value"** %1)
  %2 = load %"class.llvm::Value"*** %__result.addr, align 8
  %call2 = call %"class.llvm::Value"** @_ZSt12__niter_baseIPPN4llvm5ValueEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.llvm::Value"** %2)
  %call3 = call %"class.llvm::Value"** @_ZSt22__copy_move_backward_aILb0EPPN4llvm5ValueES3_ET1_T0_S5_S4_(%"class.llvm::Value"** %call, %"class.llvm::Value"** %call1, %"class.llvm::Value"** %call2)
  ret %"class.llvm::Value"** %call3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Value"** @_ZSt22__copy_move_backward_aILb0EPPN4llvm5ValueES3_ET1_T0_S5_S4_(%"class.llvm::Value"** %__first, %"class.llvm::Value"** %__last, %"class.llvm::Value"** %__result) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Value"**, align 8
  %__last.addr = alloca %"class.llvm::Value"**, align 8
  %__result.addr = alloca %"class.llvm::Value"**, align 8
  %__simple = alloca i8, align 1
  store %"class.llvm::Value"** %__first, %"class.llvm::Value"*** %__first.addr, align 8
  store %"class.llvm::Value"** %__last, %"class.llvm::Value"*** %__last.addr, align 8
  store %"class.llvm::Value"** %__result, %"class.llvm::Value"*** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load %"class.llvm::Value"*** %__first.addr, align 8
  %1 = load %"class.llvm::Value"*** %__last.addr, align 8
  %2 = load %"class.llvm::Value"*** %__result.addr, align 8
  %call = call %"class.llvm::Value"** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN4llvm5ValueEEEPT_PKS6_S9_S7_(%"class.llvm::Value"** %0, %"class.llvm::Value"** %1, %"class.llvm::Value"** %2)
  ret %"class.llvm::Value"** %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Value"** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN4llvm5ValueEEEPT_PKS6_S9_S7_(%"class.llvm::Value"** %__first, %"class.llvm::Value"** %__last, %"class.llvm::Value"** %__result) #5 align 2 {
entry:
  %__first.addr = alloca %"class.llvm::Value"**, align 8
  %__last.addr = alloca %"class.llvm::Value"**, align 8
  %__result.addr = alloca %"class.llvm::Value"**, align 8
  %_Num = alloca i64, align 8
  store %"class.llvm::Value"** %__first, %"class.llvm::Value"*** %__first.addr, align 8
  store %"class.llvm::Value"** %__last, %"class.llvm::Value"*** %__last.addr, align 8
  store %"class.llvm::Value"** %__result, %"class.llvm::Value"*** %__result.addr, align 8
  %0 = load %"class.llvm::Value"*** %__last.addr, align 8
  %1 = load %"class.llvm::Value"*** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.llvm::Value"** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.llvm::Value"** %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %"class.llvm::Value"*** %__result.addr, align 8
  %4 = load i64* %_Num, align 8
  %idx.neg = sub i64 0, %4
  %add.ptr = getelementptr inbounds %"class.llvm::Value"** %3, i64 %idx.neg
  %5 = bitcast %"class.llvm::Value"** %add.ptr to i8*
  %6 = load %"class.llvm::Value"*** %__first.addr, align 8
  %7 = bitcast %"class.llvm::Value"** %6 to i8*
  %8 = load i64* %_Num, align 8
  %mul = mul i64 8, %8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %5, i8* %7, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %"class.llvm::Value"*** %__result.addr, align 8
  %10 = load i64* %_Num, align 8
  %idx.neg1 = sub i64 0, %10
  %add.ptr2 = getelementptr inbounds %"class.llvm::Value"** %9, i64 %idx.neg1
  ret %"class.llvm::Value"** %add.ptr2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPN4llvm5ValueEE9constructEPS3_RKS3_(%"class.__gnu_cxx::new_allocator.75"* %this, %"class.llvm::Value"** %__p, %"class.llvm::Value"** %__val) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.75"*, align 8
  %__p.addr = alloca %"class.llvm::Value"**, align 8
  %__val.addr = alloca %"class.llvm::Value"**, align 8
  store %"class.__gnu_cxx::new_allocator.75"* %this, %"class.__gnu_cxx::new_allocator.75"** %this.addr, align 8
  store %"class.llvm::Value"** %__p, %"class.llvm::Value"*** %__p.addr, align 8
  store %"class.llvm::Value"** %__val, %"class.llvm::Value"*** %__val.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.75"** %this.addr
  %0 = load %"class.llvm::Value"*** %__p.addr, align 8
  %1 = bitcast %"class.llvm::Value"** %0 to i8*
  %new.isnull = icmp eq i8* %1, null
  br i1 %new.isnull, label %new.cont, label %new.notnull

new.notnull:                                      ; preds = %entry
  %2 = bitcast i8* %1 to %"class.llvm::Value"**
  %3 = load %"class.llvm::Value"*** %__val.addr, align 8
  %4 = load %"class.llvm::Value"** %3, align 8
  store %"class.llvm::Value"* %4, %"class.llvm::Value"** %2, align 8
  br label %new.cont

new.cont:                                         ; preds = %new.notnull, %entry
  %5 = phi %"class.llvm::Value"** [ %2, %new.notnull ], [ null, %entry ]
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EED2Ev(%"struct.std::_Vector_base.73"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.73"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base.73"* %this, %"struct.std::_Vector_base.73"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.73"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.73"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load %"class.llvm::Value"*** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.73"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load %"class.llvm::Value"*** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.73"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load %"class.llvm::Value"*** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.llvm::Value"** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.llvm::Value"** %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  invoke void @_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base.73"* %this1, %"class.llvm::Value"** %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.73"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl5) #7
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.73"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl6) #7
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %this) unnamed_addr #9 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"** %this.addr
  %0 = bitcast %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %this1 to %"class.std::allocator.74"*
  call void @_ZNSaIPN4llvm5ValueEED2Ev(%"class.std::allocator.74"* %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPN4llvm5ValueEED2Ev(%"class.std::allocator.74"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.74"*, align 8
  store %"class.std::allocator.74"* %this, %"class.std::allocator.74"** %this.addr, align 8
  %this1 = load %"class.std::allocator.74"** %this.addr
  %0 = bitcast %"class.std::allocator.74"* %this1 to %"class.__gnu_cxx::new_allocator.75"*
  call void @_ZN9__gnu_cxx13new_allocatorIPN4llvm5ValueEED2Ev(%"class.__gnu_cxx::new_allocator.75"* %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPN4llvm5ValueEED2Ev(%"class.__gnu_cxx::new_allocator.75"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.75"*, align 8
  store %"class.__gnu_cxx::new_allocator.75"* %this, %"class.__gnu_cxx::new_allocator.75"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.75"** %this.addr
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EEC2Ev(%"struct.std::_Vector_base.73"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.73"*, align 8
  store %"struct.std::_Vector_base.73"* %this, %"struct.std::_Vector_base.73"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.73"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.73"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %_M_impl)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"** %this.addr
  %0 = bitcast %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %this1 to %"class.std::allocator.74"*
  call void @_ZNSaIPN4llvm5ValueEEC2Ev(%"class.std::allocator.74"* %0) #7
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %this1, i32 0, i32 0
  store %"class.llvm::Value"** null, %"class.llvm::Value"*** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %this1, i32 0, i32 1
  store %"class.llvm::Value"** null, %"class.llvm::Value"*** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl"* %this1, i32 0, i32 2
  store %"class.llvm::Value"** null, %"class.llvm::Value"*** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPN4llvm5ValueEEC2Ev(%"class.std::allocator.74"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.74"*, align 8
  store %"class.std::allocator.74"* %this, %"class.std::allocator.74"** %this.addr, align 8
  %this1 = load %"class.std::allocator.74"** %this.addr
  %0 = bitcast %"class.std::allocator.74"* %this1 to %"class.__gnu_cxx::new_allocator.75"*
  call void @_ZN9__gnu_cxx13new_allocatorIPN4llvm5ValueEEC2Ev(%"class.__gnu_cxx::new_allocator.75"* %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPN4llvm5ValueEEC2Ev(%"class.__gnu_cxx::new_allocator.75"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.75"*, align 8
  store %"class.__gnu_cxx::new_allocator.75"* %this, %"class.__gnu_cxx::new_allocator.75"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.75"** %this.addr
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::ilist_iterator"* @_ZN4llvm14ilist_iteratorINS_8ArgumentEEppEv(%"class.llvm::ilist_iterator"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_iterator"*, align 8
  store %"class.llvm::ilist_iterator"* %this, %"class.llvm::ilist_iterator"** %this.addr, align 8
  %this1 = load %"class.llvm::ilist_iterator"** %this.addr
  %NodePtr = getelementptr inbounds %"class.llvm::ilist_iterator"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::Argument"** %NodePtr, align 8
  %call = call %"class.llvm::Argument"* @_ZN4llvm21ilist_nextprev_traitsINS_8ArgumentEE7getNextEPS1_(%"class.llvm::Argument"* %0)
  %NodePtr2 = getelementptr inbounds %"class.llvm::ilist_iterator"* %this1, i32 0, i32 0
  store %"class.llvm::Argument"* %call, %"class.llvm::Argument"** %NodePtr2, align 8
  ret %"class.llvm::ilist_iterator"* %this1
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Argument"* @_ZN4llvm21ilist_nextprev_traitsINS_8ArgumentEE7getNextEPS1_(%"class.llvm::Argument"* %N) #0 align 2 {
entry:
  %N.addr = alloca %"class.llvm::Argument"*, align 8
  store %"class.llvm::Argument"* %N, %"class.llvm::Argument"** %N.addr, align 8
  %0 = load %"class.llvm::Argument"** %N.addr, align 8
  %1 = bitcast %"class.llvm::Argument"* %0 to i8*
  %add.ptr = getelementptr inbounds i8* %1, i64 40
  %2 = bitcast i8* %add.ptr to %"class.llvm::ilist_node.42"*
  %call = call %"class.llvm::Argument"* @_ZN4llvm10ilist_nodeINS_8ArgumentEE7getNextEv(%"class.llvm::ilist_node.42"* %2)
  ret %"class.llvm::Argument"* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Argument"* @_ZN4llvm10ilist_nodeINS_8ArgumentEE7getNextEv(%"class.llvm::ilist_node.42"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_node.42"*, align 8
  store %"class.llvm::ilist_node.42"* %this, %"class.llvm::ilist_node.42"** %this.addr, align 8
  %this1 = load %"class.llvm::ilist_node.42"** %this.addr
  %Next = getelementptr inbounds %"class.llvm::ilist_node.42"* %this1, i32 0, i32 1
  %0 = load %"class.llvm::Argument"** %Next, align 8
  ret %"class.llvm::Argument"* %0
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNKSt6vectorIPN4llvm8ConstantESaIS2_EE5emptyEv(%"class.std::vector.66"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.66"*, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.79", align 8
  %ref.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator.79", align 8
  store %"class.std::vector.66"* %this, %"class.std::vector.66"** %this.addr, align 8
  %this1 = load %"class.std::vector.66"** %this.addr
  %call = call %"class.llvm::Constant"** @_ZNKSt6vectorIPN4llvm8ConstantESaIS2_EE5beginEv(%"class.std::vector.66"* %this1)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.79"* %ref.tmp, i32 0, i32 0
  store %"class.llvm::Constant"** %call, %"class.llvm::Constant"*** %coerce.dive
  %call3 = call %"class.llvm::Constant"** @_ZNKSt6vectorIPN4llvm8ConstantESaIS2_EE3endEv(%"class.std::vector.66"* %this1)
  %coerce.dive4 = getelementptr %"class.__gnu_cxx::__normal_iterator.79"* %ref.tmp2, i32 0, i32 0
  store %"class.llvm::Constant"** %call3, %"class.llvm::Constant"*** %coerce.dive4
  %call5 = call zeroext i1 @_ZN9__gnu_cxxeqIPKPN4llvm8ConstantESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(%"class.__gnu_cxx::__normal_iterator.79"* %ref.tmp, %"class.__gnu_cxx::__normal_iterator.79"* %ref.tmp2)
  ret i1 %call5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZNKSt6vectorIPN4llvm8ConstantESaIS2_EEixEm(%"class.std::vector.66"* %this, i64 %__n) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.66"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector.66"* %this, %"class.std::vector.66"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector.66"** %this.addr
  %0 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.67"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"class.llvm::Constant"*** %_M_start, align 8
  %2 = load i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"class.llvm::Constant"** %1, i64 %2
  ret %"class.llvm::Constant"** %add.ptr
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIPN4llvm8ConstantESaIS2_EE4sizeEv(%"class.std::vector.66"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.66"*, align 8
  store %"class.std::vector.66"* %this, %"class.std::vector.66"** %this.addr, align 8
  %this1 = load %"class.std::vector.66"** %this.addr
  %0 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.67"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %"class.llvm::Constant"*** %_M_finish, align 8
  %2 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.67"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load %"class.llvm::Constant"*** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.llvm::Constant"** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.llvm::Constant"** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: inlinehint uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxeqIPKPN4llvm8ConstantESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(%"class.__gnu_cxx::__normal_iterator.79"* %__lhs, %"class.__gnu_cxx::__normal_iterator.79"* %__rhs) #8 {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.79"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.79"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.79"* %__lhs, %"class.__gnu_cxx::__normal_iterator.79"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator.79"* %__rhs, %"class.__gnu_cxx::__normal_iterator.79"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator.79"** %__lhs.addr, align 8
  %call = call %"class.llvm::Constant"*** @_ZNK9__gnu_cxx17__normal_iteratorIPKPN4llvm8ConstantESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.79"* %0)
  %1 = load %"class.llvm::Constant"*** %call
  %2 = load %"class.__gnu_cxx::__normal_iterator.79"** %__rhs.addr, align 8
  %call1 = call %"class.llvm::Constant"*** @_ZNK9__gnu_cxx17__normal_iteratorIPKPN4llvm8ConstantESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.79"* %2)
  %3 = load %"class.llvm::Constant"*** %call1
  %cmp = icmp eq %"class.llvm::Constant"** %1, %3
  ret i1 %cmp
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZNKSt6vectorIPN4llvm8ConstantESaIS2_EE5beginEv(%"class.std::vector.66"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.79", align 8
  %this.addr = alloca %"class.std::vector.66"*, align 8
  %ref.tmp = alloca %"class.llvm::Constant"**, align 8
  store %"class.std::vector.66"* %this, %"class.std::vector.66"** %this.addr, align 8
  %this1 = load %"class.std::vector.66"** %this.addr
  %0 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.67"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"class.llvm::Constant"*** %_M_start, align 8
  store %"class.llvm::Constant"** %1, %"class.llvm::Constant"*** %ref.tmp
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKPN4llvm8ConstantESt6vectorIS3_SaIS3_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator.79"* %retval, %"class.llvm::Constant"*** %ref.tmp)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.79"* %retval, i32 0, i32 0
  %2 = load %"class.llvm::Constant"*** %coerce.dive
  ret %"class.llvm::Constant"** %2
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZNKSt6vectorIPN4llvm8ConstantESaIS2_EE3endEv(%"class.std::vector.66"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.79", align 8
  %this.addr = alloca %"class.std::vector.66"*, align 8
  %ref.tmp = alloca %"class.llvm::Constant"**, align 8
  store %"class.std::vector.66"* %this, %"class.std::vector.66"** %this.addr, align 8
  %this1 = load %"class.std::vector.66"** %this.addr
  %0 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.67"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %"class.llvm::Constant"*** %_M_finish, align 8
  store %"class.llvm::Constant"** %1, %"class.llvm::Constant"*** %ref.tmp
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKPN4llvm8ConstantESt6vectorIS3_SaIS3_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator.79"* %retval, %"class.llvm::Constant"*** %ref.tmp)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.79"* %retval, i32 0, i32 0
  %2 = load %"class.llvm::Constant"*** %coerce.dive
  ret %"class.llvm::Constant"** %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPKPN4llvm8ConstantESt6vectorIS3_SaIS3_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator.79"* %this, %"class.llvm::Constant"*** %__i) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.79"*, align 8
  %__i.addr = alloca %"class.llvm::Constant"***, align 8
  store %"class.__gnu_cxx::__normal_iterator.79"* %this, %"class.__gnu_cxx::__normal_iterator.79"** %this.addr, align 8
  store %"class.llvm::Constant"*** %__i, %"class.llvm::Constant"**** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.79"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.79"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::Constant"**** %__i.addr, align 8
  %1 = load %"class.llvm::Constant"*** %0, align 8
  store %"class.llvm::Constant"** %1, %"class.llvm::Constant"*** %_M_current, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Constant"*** @_ZNK9__gnu_cxx17__normal_iteratorIPKPN4llvm8ConstantESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.79"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.79"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.79"* %this, %"class.__gnu_cxx::__normal_iterator.79"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.79"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.79"* %this1, i32 0, i32 0
  ret %"class.llvm::Constant"*** %_M_current
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm8ConstantEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator.68"* %__a, %"class.llvm::Constant"** %__p, %"class.llvm::Constant"** %__arg) #0 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.68"*, align 8
  %__p.addr = alloca %"class.llvm::Constant"**, align 8
  %__arg.addr = alloca %"class.llvm::Constant"**, align 8
  store %"class.std::allocator.68"* %__a, %"class.std::allocator.68"** %__a.addr, align 8
  store %"class.llvm::Constant"** %__p, %"class.llvm::Constant"*** %__p.addr, align 8
  store %"class.llvm::Constant"** %__arg, %"class.llvm::Constant"*** %__arg.addr, align 8
  %0 = load %"class.std::allocator.68"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.68"* %0 to %"class.__gnu_cxx::new_allocator.69"*
  %2 = load %"class.llvm::Constant"*** %__p.addr, align 8
  %3 = load %"class.llvm::Constant"*** %__arg.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPN4llvm8ConstantEE9constructEPS3_RKS3_(%"class.__gnu_cxx::new_allocator.69"* %1, %"class.llvm::Constant"** %2, %"class.llvm::Constant"** %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIPN4llvm8ConstantESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_(%"class.std::vector.66"* %this, %"class.llvm::Constant"** %__position.coerce, %"class.llvm::Constant"** %__x) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.66"*, align 8
  %__position = alloca %"class.__gnu_cxx::__normal_iterator.80", align 8
  %__x.addr = alloca %"class.llvm::Constant"**, align 8
  %__x_copy = alloca %"class.llvm::Constant"*, align 8
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.80", align 8
  %__new_start = alloca %"class.llvm::Constant"**, align 8
  %__new_finish = alloca %"class.llvm::Constant"**, align 8
  store %"class.std::vector.66"* %this, %"class.std::vector.66"** %this.addr, align 8
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.80"* %__position, i32 0, i32 0
  store %"class.llvm::Constant"** %__position.coerce, %"class.llvm::Constant"*** %coerce.dive
  store %"class.llvm::Constant"** %__x, %"class.llvm::Constant"*** %__x.addr, align 8
  %this1 = load %"class.std::vector.66"** %this.addr
  %0 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.67"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %"class.llvm::Constant"*** %_M_finish, align 8
  %2 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.67"* %2, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %3 = load %"class.llvm::Constant"*** %_M_end_of_storage, align 8
  %cmp = icmp ne %"class.llvm::Constant"** %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.67"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl3 to %"class.std::allocator.68"*
  %6 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.67"* %6, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  %7 = load %"class.llvm::Constant"*** %_M_finish5, align 8
  %8 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.67"* %8, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %9 = load %"class.llvm::Constant"*** %_M_finish7, align 8
  %add.ptr = getelementptr inbounds %"class.llvm::Constant"** %9, i64 -1
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm8ConstantEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator.68"* %5, %"class.llvm::Constant"** %7, %"class.llvm::Constant"** %add.ptr)
  %10 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl8 = getelementptr inbounds %"struct.std::_Vector_base.67"* %10, i32 0, i32 0
  %_M_finish9 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl8, i32 0, i32 1
  %11 = load %"class.llvm::Constant"*** %_M_finish9, align 8
  %incdec.ptr = getelementptr inbounds %"class.llvm::Constant"** %11, i32 1
  store %"class.llvm::Constant"** %incdec.ptr, %"class.llvm::Constant"*** %_M_finish9, align 8
  %12 = load %"class.llvm::Constant"*** %__x.addr, align 8
  %13 = load %"class.llvm::Constant"** %12, align 8
  store %"class.llvm::Constant"* %13, %"class.llvm::Constant"** %__x_copy, align 8
  %call = call %"class.llvm::Constant"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm8ConstantESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.80"* %__position)
  %14 = load %"class.llvm::Constant"*** %call
  %15 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl10 = getelementptr inbounds %"struct.std::_Vector_base.67"* %15, i32 0, i32 0
  %_M_finish11 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl10, i32 0, i32 1
  %16 = load %"class.llvm::Constant"*** %_M_finish11, align 8
  %add.ptr12 = getelementptr inbounds %"class.llvm::Constant"** %16, i64 -2
  %17 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base.67"* %17, i32 0, i32 0
  %_M_finish14 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl13, i32 0, i32 1
  %18 = load %"class.llvm::Constant"*** %_M_finish14, align 8
  %add.ptr15 = getelementptr inbounds %"class.llvm::Constant"** %18, i64 -1
  %call16 = call %"class.llvm::Constant"** @_ZSt13copy_backwardIPPN4llvm8ConstantES3_ET0_T_S5_S4_(%"class.llvm::Constant"** %14, %"class.llvm::Constant"** %add.ptr12, %"class.llvm::Constant"** %add.ptr15)
  %19 = load %"class.llvm::Constant"** %__x_copy, align 8
  %call17 = call %"class.llvm::Constant"** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm8ConstantESt6vectorIS3_SaIS3_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.80"* %__position)
  store %"class.llvm::Constant"* %19, %"class.llvm::Constant"** %call17
  br label %if.end

if.else:                                          ; preds = %entry
  %call18 = call i64 @_ZNKSt6vectorIPN4llvm8ConstantESaIS2_EE12_M_check_lenEmPKc(%"class.std::vector.66"* %this1, i64 1, i8* getelementptr inbounds ([22 x i8]* @.str27, i32 0, i32 0))
  store i64 %call18, i64* %__len, align 8
  %call19 = call %"class.llvm::Constant"** @_ZNSt6vectorIPN4llvm8ConstantESaIS2_EE5beginEv(%"class.std::vector.66"* %this1)
  %coerce.dive20 = getelementptr %"class.__gnu_cxx::__normal_iterator.80"* %ref.tmp, i32 0, i32 0
  store %"class.llvm::Constant"** %call19, %"class.llvm::Constant"*** %coerce.dive20
  %call21 = call i64 @_ZN9__gnu_cxxmiIPPN4llvm8ConstantESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(%"class.__gnu_cxx::__normal_iterator.80"* %__position, %"class.__gnu_cxx::__normal_iterator.80"* %ref.tmp)
  store i64 %call21, i64* %__elems_before, align 8
  %20 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %21 = load i64* %__len, align 8
  %call22 = call %"class.llvm::Constant"** @_ZNSt12_Vector_baseIPN4llvm8ConstantESaIS2_EE11_M_allocateEm(%"struct.std::_Vector_base.67"* %20, i64 %21)
  store %"class.llvm::Constant"** %call22, %"class.llvm::Constant"*** %__new_start, align 8
  %22 = load %"class.llvm::Constant"*** %__new_start, align 8
  store %"class.llvm::Constant"** %22, %"class.llvm::Constant"*** %__new_finish, align 8
  %23 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl23 = getelementptr inbounds %"struct.std::_Vector_base.67"* %23, i32 0, i32 0
  %24 = bitcast %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl23 to %"class.std::allocator.68"*
  %25 = load %"class.llvm::Constant"*** %__new_start, align 8
  %26 = load i64* %__elems_before, align 8
  %add.ptr24 = getelementptr inbounds %"class.llvm::Constant"** %25, i64 %26
  %27 = load %"class.llvm::Constant"*** %__x.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm8ConstantEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator.68"* %24, %"class.llvm::Constant"** %add.ptr24, %"class.llvm::Constant"** %27)
  store %"class.llvm::Constant"** null, %"class.llvm::Constant"*** %__new_finish, align 8
  %28 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl25 = getelementptr inbounds %"struct.std::_Vector_base.67"* %28, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl25, i32 0, i32 0
  %29 = load %"class.llvm::Constant"*** %_M_start, align 8
  %call26 = call %"class.llvm::Constant"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm8ConstantESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.80"* %__position)
  %30 = load %"class.llvm::Constant"*** %call26
  %31 = load %"class.llvm::Constant"*** %__new_start, align 8
  %32 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %call27 = call %"class.std::allocator.68"* @_ZNSt12_Vector_baseIPN4llvm8ConstantESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.67"* %32)
  %call28 = call %"class.llvm::Constant"** @_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm8ConstantES3_SaIS2_EET0_T_S6_S5_RT1_(%"class.llvm::Constant"** %29, %"class.llvm::Constant"** %30, %"class.llvm::Constant"** %31, %"class.std::allocator.68"* %call27)
  store %"class.llvm::Constant"** %call28, %"class.llvm::Constant"*** %__new_finish, align 8
  %33 = load %"class.llvm::Constant"*** %__new_finish, align 8
  %incdec.ptr29 = getelementptr inbounds %"class.llvm::Constant"** %33, i32 1
  store %"class.llvm::Constant"** %incdec.ptr29, %"class.llvm::Constant"*** %__new_finish, align 8
  %call30 = call %"class.llvm::Constant"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm8ConstantESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.80"* %__position)
  %34 = load %"class.llvm::Constant"*** %call30
  %35 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl31 = getelementptr inbounds %"struct.std::_Vector_base.67"* %35, i32 0, i32 0
  %_M_finish32 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl31, i32 0, i32 1
  %36 = load %"class.llvm::Constant"*** %_M_finish32, align 8
  %37 = load %"class.llvm::Constant"*** %__new_finish, align 8
  %38 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %call33 = call %"class.std::allocator.68"* @_ZNSt12_Vector_baseIPN4llvm8ConstantESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.67"* %38)
  %call34 = call %"class.llvm::Constant"** @_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm8ConstantES3_SaIS2_EET0_T_S6_S5_RT1_(%"class.llvm::Constant"** %34, %"class.llvm::Constant"** %36, %"class.llvm::Constant"** %37, %"class.std::allocator.68"* %call33)
  store %"class.llvm::Constant"** %call34, %"class.llvm::Constant"*** %__new_finish, align 8
  %39 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl35 = getelementptr inbounds %"struct.std::_Vector_base.67"* %39, i32 0, i32 0
  %_M_start36 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl35, i32 0, i32 0
  %40 = load %"class.llvm::Constant"*** %_M_start36, align 8
  %41 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl37 = getelementptr inbounds %"struct.std::_Vector_base.67"* %41, i32 0, i32 0
  %_M_finish38 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl37, i32 0, i32 1
  %42 = load %"class.llvm::Constant"*** %_M_finish38, align 8
  %43 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %call39 = call %"class.std::allocator.68"* @_ZNSt12_Vector_baseIPN4llvm8ConstantESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.67"* %43)
  call void @_ZSt8_DestroyIPPN4llvm8ConstantES2_EvT_S4_RSaIT0_E(%"class.llvm::Constant"** %40, %"class.llvm::Constant"** %42, %"class.std::allocator.68"* %call39)
  %44 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %45 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl40 = getelementptr inbounds %"struct.std::_Vector_base.67"* %45, i32 0, i32 0
  %_M_start41 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl40, i32 0, i32 0
  %46 = load %"class.llvm::Constant"*** %_M_start41, align 8
  %47 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl42 = getelementptr inbounds %"struct.std::_Vector_base.67"* %47, i32 0, i32 0
  %_M_end_of_storage43 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl42, i32 0, i32 2
  %48 = load %"class.llvm::Constant"*** %_M_end_of_storage43, align 8
  %49 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl44 = getelementptr inbounds %"struct.std::_Vector_base.67"* %49, i32 0, i32 0
  %_M_start45 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl44, i32 0, i32 0
  %50 = load %"class.llvm::Constant"*** %_M_start45, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.llvm::Constant"** %48 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.llvm::Constant"** %50 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  call void @_ZNSt12_Vector_baseIPN4llvm8ConstantESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base.67"* %44, %"class.llvm::Constant"** %46, i64 %sub.ptr.div)
  %51 = load %"class.llvm::Constant"*** %__new_start, align 8
  %52 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl46 = getelementptr inbounds %"struct.std::_Vector_base.67"* %52, i32 0, i32 0
  %_M_start47 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl46, i32 0, i32 0
  store %"class.llvm::Constant"** %51, %"class.llvm::Constant"*** %_M_start47, align 8
  %53 = load %"class.llvm::Constant"*** %__new_finish, align 8
  %54 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl48 = getelementptr inbounds %"struct.std::_Vector_base.67"* %54, i32 0, i32 0
  %_M_finish49 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl48, i32 0, i32 1
  store %"class.llvm::Constant"** %53, %"class.llvm::Constant"*** %_M_finish49, align 8
  %55 = load %"class.llvm::Constant"*** %__new_start, align 8
  %56 = load i64* %__len, align 8
  %add.ptr50 = getelementptr inbounds %"class.llvm::Constant"** %55, i64 %56
  %57 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl51 = getelementptr inbounds %"struct.std::_Vector_base.67"* %57, i32 0, i32 0
  %_M_end_of_storage52 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl51, i32 0, i32 2
  store %"class.llvm::Constant"** %add.ptr50, %"class.llvm::Constant"*** %_M_end_of_storage52, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZNSt6vectorIPN4llvm8ConstantESaIS2_EE3endEv(%"class.std::vector.66"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.80", align 8
  %this.addr = alloca %"class.std::vector.66"*, align 8
  store %"class.std::vector.66"* %this, %"class.std::vector.66"** %this.addr, align 8
  %this1 = load %"class.std::vector.66"** %this.addr
  %0 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.67"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPN4llvm8ConstantESt6vectorIS3_SaIS3_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.80"* %retval, %"class.llvm::Constant"*** %_M_finish)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.80"* %retval, i32 0, i32 0
  %1 = load %"class.llvm::Constant"*** %coerce.dive
  ret %"class.llvm::Constant"** %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPPN4llvm8ConstantESt6vectorIS3_SaIS3_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.80"* %this, %"class.llvm::Constant"*** %__i) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.80"*, align 8
  %__i.addr = alloca %"class.llvm::Constant"***, align 8
  store %"class.__gnu_cxx::__normal_iterator.80"* %this, %"class.__gnu_cxx::__normal_iterator.80"** %this.addr, align 8
  store %"class.llvm::Constant"*** %__i, %"class.llvm::Constant"**** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.80"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.80"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::Constant"**** %__i.addr, align 8
  %1 = load %"class.llvm::Constant"*** %0, align 8
  store %"class.llvm::Constant"** %1, %"class.llvm::Constant"*** %_M_current, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZSt13copy_backwardIPPN4llvm8ConstantES3_ET0_T_S5_S4_(%"class.llvm::Constant"** %__first, %"class.llvm::Constant"** %__last, %"class.llvm::Constant"** %__result) #0 {
entry:
  %__first.addr = alloca %"class.llvm::Constant"**, align 8
  %__last.addr = alloca %"class.llvm::Constant"**, align 8
  %__result.addr = alloca %"class.llvm::Constant"**, align 8
  store %"class.llvm::Constant"** %__first, %"class.llvm::Constant"*** %__first.addr, align 8
  store %"class.llvm::Constant"** %__last, %"class.llvm::Constant"*** %__last.addr, align 8
  store %"class.llvm::Constant"** %__result, %"class.llvm::Constant"*** %__result.addr, align 8
  %0 = load %"class.llvm::Constant"*** %__first.addr, align 8
  %call = call %"class.llvm::Constant"** @_ZSt12__miter_baseIPPN4llvm8ConstantEENSt11_Miter_baseIT_E13iterator_typeES5_(%"class.llvm::Constant"** %0)
  %1 = load %"class.llvm::Constant"*** %__last.addr, align 8
  %call1 = call %"class.llvm::Constant"** @_ZSt12__miter_baseIPPN4llvm8ConstantEENSt11_Miter_baseIT_E13iterator_typeES5_(%"class.llvm::Constant"** %1)
  %2 = load %"class.llvm::Constant"*** %__result.addr, align 8
  %call2 = call %"class.llvm::Constant"** @_ZSt23__copy_move_backward_a2ILb0EPPN4llvm8ConstantES3_ET1_T0_S5_S4_(%"class.llvm::Constant"** %call, %"class.llvm::Constant"** %call1, %"class.llvm::Constant"** %2)
  ret %"class.llvm::Constant"** %call2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Constant"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm8ConstantESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.80"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.80"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.80"* %this, %"class.__gnu_cxx::__normal_iterator.80"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.80"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.80"* %this1, i32 0, i32 0
  ret %"class.llvm::Constant"*** %_M_current
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm8ConstantESt6vectorIS3_SaIS3_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.80"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.80"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.80"* %this, %"class.__gnu_cxx::__normal_iterator.80"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.80"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.80"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::Constant"*** %_M_current, align 8
  ret %"class.llvm::Constant"** %0
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIPN4llvm8ConstantESaIS2_EE12_M_check_lenEmPKc(%"class.std::vector.66"* %this, i64 %__n, i8* %__s) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.66"*, align 8
  %__n.addr = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  %__len = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store %"class.std::vector.66"* %this, %"class.std::vector.66"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %this1 = load %"class.std::vector.66"** %this.addr
  %call = call i64 @_ZNKSt6vectorIPN4llvm8ConstantESaIS2_EE8max_sizeEv(%"class.std::vector.66"* %this1)
  %call2 = call i64 @_ZNKSt6vectorIPN4llvm8ConstantESaIS2_EE4sizeEv(%"class.std::vector.66"* %this1)
  %sub = sub i64 %call, %call2
  %0 = load i64* %__n.addr, align 8
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8** %__s.addr, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %1) #17
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call i64 @_ZNKSt6vectorIPN4llvm8ConstantESaIS2_EE4sizeEv(%"class.std::vector.66"* %this1)
  %call4 = call i64 @_ZNKSt6vectorIPN4llvm8ConstantESaIS2_EE4sizeEv(%"class.std::vector.66"* %this1)
  store i64 %call4, i64* %ref.tmp
  %call5 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %ref.tmp, i64* %__n.addr)
  %2 = load i64* %call5
  %add = add i64 %call3, %2
  store i64 %add, i64* %__len, align 8
  %3 = load i64* %__len, align 8
  %call6 = call i64 @_ZNKSt6vectorIPN4llvm8ConstantESaIS2_EE4sizeEv(%"class.std::vector.66"* %this1)
  %cmp7 = icmp ult i64 %3, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64* %__len, align 8
  %call8 = call i64 @_ZNKSt6vectorIPN4llvm8ConstantESaIS2_EE8max_sizeEv(%"class.std::vector.66"* %this1)
  %cmp9 = icmp ugt i64 %4, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call i64 @_ZNKSt6vectorIPN4llvm8ConstantESaIS2_EE8max_sizeEv(%"class.std::vector.66"* %this1)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load i64* %__len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %5, %cond.false ]
  ret i64 %cond
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPPN4llvm8ConstantESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(%"class.__gnu_cxx::__normal_iterator.80"* %__lhs, %"class.__gnu_cxx::__normal_iterator.80"* %__rhs) #8 {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.80"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.80"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.80"* %__lhs, %"class.__gnu_cxx::__normal_iterator.80"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator.80"* %__rhs, %"class.__gnu_cxx::__normal_iterator.80"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator.80"** %__lhs.addr, align 8
  %call = call %"class.llvm::Constant"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm8ConstantESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.80"* %0)
  %1 = load %"class.llvm::Constant"*** %call
  %2 = load %"class.__gnu_cxx::__normal_iterator.80"** %__rhs.addr, align 8
  %call1 = call %"class.llvm::Constant"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm8ConstantESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.80"* %2)
  %3 = load %"class.llvm::Constant"*** %call1
  %sub.ptr.lhs.cast = ptrtoint %"class.llvm::Constant"** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.llvm::Constant"** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZNSt6vectorIPN4llvm8ConstantESaIS2_EE5beginEv(%"class.std::vector.66"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.80", align 8
  %this.addr = alloca %"class.std::vector.66"*, align 8
  store %"class.std::vector.66"* %this, %"class.std::vector.66"** %this.addr, align 8
  %this1 = load %"class.std::vector.66"** %this.addr
  %0 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.67"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPN4llvm8ConstantESt6vectorIS3_SaIS3_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.80"* %retval, %"class.llvm::Constant"*** %_M_start)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.80"* %retval, i32 0, i32 0
  %1 = load %"class.llvm::Constant"*** %coerce.dive
  ret %"class.llvm::Constant"** %1
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZNSt12_Vector_baseIPN4llvm8ConstantESaIS2_EE11_M_allocateEm(%"struct.std::_Vector_base.67"* %this, i64 %__n) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.67"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base.67"* %this, %"struct.std::_Vector_base.67"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base.67"** %this.addr
  %0 = load i64* %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.67"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl to %"class.std::allocator.68"*
  %2 = load i64* %__n.addr, align 8
  %call = call %"class.llvm::Constant"** @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm8ConstantEEE8allocateERS4_m(%"class.std::allocator.68"* %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"class.llvm::Constant"** [ %call, %cond.true ], [ null, %cond.false ]
  ret %"class.llvm::Constant"** %cond
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm8ConstantES3_SaIS2_EET0_T_S6_S5_RT1_(%"class.llvm::Constant"** %__first, %"class.llvm::Constant"** %__last, %"class.llvm::Constant"** %__result, %"class.std::allocator.68"* %__alloc) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Constant"**, align 8
  %__last.addr = alloca %"class.llvm::Constant"**, align 8
  %__result.addr = alloca %"class.llvm::Constant"**, align 8
  %__alloc.addr = alloca %"class.std::allocator.68"*, align 8
  store %"class.llvm::Constant"** %__first, %"class.llvm::Constant"*** %__first.addr, align 8
  store %"class.llvm::Constant"** %__last, %"class.llvm::Constant"*** %__last.addr, align 8
  store %"class.llvm::Constant"** %__result, %"class.llvm::Constant"*** %__result.addr, align 8
  store %"class.std::allocator.68"* %__alloc, %"class.std::allocator.68"** %__alloc.addr, align 8
  %0 = load %"class.llvm::Constant"*** %__first.addr, align 8
  %1 = load %"class.llvm::Constant"*** %__last.addr, align 8
  %2 = load %"class.llvm::Constant"*** %__result.addr, align 8
  %3 = load %"class.std::allocator.68"** %__alloc.addr, align 8
  %call = call %"class.llvm::Constant"** @_ZSt22__uninitialized_copy_aIPPN4llvm8ConstantES3_S2_ET0_T_S5_S4_RSaIT1_E(%"class.llvm::Constant"** %0, %"class.llvm::Constant"** %1, %"class.llvm::Constant"** %2, %"class.std::allocator.68"* %3)
  ret %"class.llvm::Constant"** %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.68"* @_ZNSt12_Vector_baseIPN4llvm8ConstantESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.67"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.67"*, align 8
  store %"struct.std::_Vector_base.67"* %this, %"struct.std::_Vector_base.67"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.67"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.67"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl to %"class.std::allocator.68"*
  ret %"class.std::allocator.68"* %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPPN4llvm8ConstantES2_EvT_S4_RSaIT0_E(%"class.llvm::Constant"** %__first, %"class.llvm::Constant"** %__last, %"class.std::allocator.68"*) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Constant"**, align 8
  %__last.addr = alloca %"class.llvm::Constant"**, align 8
  %.addr = alloca %"class.std::allocator.68"*, align 8
  store %"class.llvm::Constant"** %__first, %"class.llvm::Constant"*** %__first.addr, align 8
  store %"class.llvm::Constant"** %__last, %"class.llvm::Constant"*** %__last.addr, align 8
  store %"class.std::allocator.68"* %0, %"class.std::allocator.68"** %.addr, align 8
  %1 = load %"class.llvm::Constant"*** %__first.addr, align 8
  %2 = load %"class.llvm::Constant"*** %__last.addr, align 8
  call void @_ZSt8_DestroyIPPN4llvm8ConstantEEvT_S4_(%"class.llvm::Constant"** %1, %"class.llvm::Constant"** %2)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN4llvm8ConstantESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base.67"* %this, %"class.llvm::Constant"** %__p, i64 %__n) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.67"*, align 8
  %__p.addr = alloca %"class.llvm::Constant"**, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base.67"* %this, %"struct.std::_Vector_base.67"** %this.addr, align 8
  store %"class.llvm::Constant"** %__p, %"class.llvm::Constant"*** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base.67"** %this.addr
  %0 = load %"class.llvm::Constant"*** %__p.addr, align 8
  %tobool = icmp ne %"class.llvm::Constant"** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.67"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl to %"class.std::allocator.68"*
  %2 = load %"class.llvm::Constant"*** %__p.addr, align 8
  %3 = load i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm8ConstantEEE10deallocateERS4_PS3_m(%"class.std::allocator.68"* %1, %"class.llvm::Constant"** %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm8ConstantEEE10deallocateERS4_PS3_m(%"class.std::allocator.68"* %__a, %"class.llvm::Constant"** %__p, i64 %__n) #0 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.68"*, align 8
  %__p.addr = alloca %"class.llvm::Constant"**, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.68"* %__a, %"class.std::allocator.68"** %__a.addr, align 8
  store %"class.llvm::Constant"** %__p, %"class.llvm::Constant"*** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.68"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.68"* %0 to %"class.__gnu_cxx::new_allocator.69"*
  %2 = load %"class.llvm::Constant"*** %__p.addr, align 8
  %3 = load i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPN4llvm8ConstantEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator.69"* %1, %"class.llvm::Constant"** %2, i64 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPN4llvm8ConstantEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator.69"* %this, %"class.llvm::Constant"** %__p, i64) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.69"*, align 8
  %__p.addr = alloca %"class.llvm::Constant"**, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.69"* %this, %"class.__gnu_cxx::new_allocator.69"** %this.addr, align 8
  store %"class.llvm::Constant"** %__p, %"class.llvm::Constant"*** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.69"** %this.addr
  %1 = load %"class.llvm::Constant"*** %__p.addr, align 8
  %2 = bitcast %"class.llvm::Constant"** %1 to i8*
  call void @_ZdlPv(i8* %2) #7
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPPN4llvm8ConstantEEvT_S4_(%"class.llvm::Constant"** %__first, %"class.llvm::Constant"** %__last) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Constant"**, align 8
  %__last.addr = alloca %"class.llvm::Constant"**, align 8
  store %"class.llvm::Constant"** %__first, %"class.llvm::Constant"*** %__first.addr, align 8
  store %"class.llvm::Constant"** %__last, %"class.llvm::Constant"*** %__last.addr, align 8
  %0 = load %"class.llvm::Constant"*** %__first.addr, align 8
  %1 = load %"class.llvm::Constant"*** %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPN4llvm8ConstantEEEvT_S6_(%"class.llvm::Constant"** %0, %"class.llvm::Constant"** %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPN4llvm8ConstantEEEvT_S6_(%"class.llvm::Constant"**, %"class.llvm::Constant"**) #5 align 2 {
entry:
  %.addr = alloca %"class.llvm::Constant"**, align 8
  %.addr1 = alloca %"class.llvm::Constant"**, align 8
  store %"class.llvm::Constant"** %0, %"class.llvm::Constant"*** %.addr, align 8
  store %"class.llvm::Constant"** %1, %"class.llvm::Constant"*** %.addr1, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZSt22__uninitialized_copy_aIPPN4llvm8ConstantES3_S2_ET0_T_S5_S4_RSaIT1_E(%"class.llvm::Constant"** %__first, %"class.llvm::Constant"** %__last, %"class.llvm::Constant"** %__result, %"class.std::allocator.68"*) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Constant"**, align 8
  %__last.addr = alloca %"class.llvm::Constant"**, align 8
  %__result.addr = alloca %"class.llvm::Constant"**, align 8
  %.addr = alloca %"class.std::allocator.68"*, align 8
  store %"class.llvm::Constant"** %__first, %"class.llvm::Constant"*** %__first.addr, align 8
  store %"class.llvm::Constant"** %__last, %"class.llvm::Constant"*** %__last.addr, align 8
  store %"class.llvm::Constant"** %__result, %"class.llvm::Constant"*** %__result.addr, align 8
  store %"class.std::allocator.68"* %0, %"class.std::allocator.68"** %.addr, align 8
  %1 = load %"class.llvm::Constant"*** %__first.addr, align 8
  %2 = load %"class.llvm::Constant"*** %__last.addr, align 8
  %3 = load %"class.llvm::Constant"*** %__result.addr, align 8
  %call = call %"class.llvm::Constant"** @_ZSt18uninitialized_copyIPPN4llvm8ConstantES3_ET0_T_S5_S4_(%"class.llvm::Constant"** %1, %"class.llvm::Constant"** %2, %"class.llvm::Constant"** %3)
  ret %"class.llvm::Constant"** %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZSt18uninitialized_copyIPPN4llvm8ConstantES3_ET0_T_S5_S4_(%"class.llvm::Constant"** %__first, %"class.llvm::Constant"** %__last, %"class.llvm::Constant"** %__result) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Constant"**, align 8
  %__last.addr = alloca %"class.llvm::Constant"**, align 8
  %__result.addr = alloca %"class.llvm::Constant"**, align 8
  %__assignable = alloca i8, align 1
  store %"class.llvm::Constant"** %__first, %"class.llvm::Constant"*** %__first.addr, align 8
  store %"class.llvm::Constant"** %__last, %"class.llvm::Constant"*** %__last.addr, align 8
  store %"class.llvm::Constant"** %__result, %"class.llvm::Constant"*** %__result.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = load %"class.llvm::Constant"*** %__first.addr, align 8
  %1 = load %"class.llvm::Constant"*** %__last.addr, align 8
  %2 = load %"class.llvm::Constant"*** %__result.addr, align 8
  %call = call %"class.llvm::Constant"** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPPN4llvm8ConstantES5_EET0_T_S7_S6_(%"class.llvm::Constant"** %0, %"class.llvm::Constant"** %1, %"class.llvm::Constant"** %2)
  ret %"class.llvm::Constant"** %call
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPPN4llvm8ConstantES5_EET0_T_S7_S6_(%"class.llvm::Constant"** %__first, %"class.llvm::Constant"** %__last, %"class.llvm::Constant"** %__result) #0 align 2 {
entry:
  %__first.addr = alloca %"class.llvm::Constant"**, align 8
  %__last.addr = alloca %"class.llvm::Constant"**, align 8
  %__result.addr = alloca %"class.llvm::Constant"**, align 8
  store %"class.llvm::Constant"** %__first, %"class.llvm::Constant"*** %__first.addr, align 8
  store %"class.llvm::Constant"** %__last, %"class.llvm::Constant"*** %__last.addr, align 8
  store %"class.llvm::Constant"** %__result, %"class.llvm::Constant"*** %__result.addr, align 8
  %0 = load %"class.llvm::Constant"*** %__first.addr, align 8
  %1 = load %"class.llvm::Constant"*** %__last.addr, align 8
  %2 = load %"class.llvm::Constant"*** %__result.addr, align 8
  %call = call %"class.llvm::Constant"** @_ZSt4copyIPPN4llvm8ConstantES3_ET0_T_S5_S4_(%"class.llvm::Constant"** %0, %"class.llvm::Constant"** %1, %"class.llvm::Constant"** %2)
  ret %"class.llvm::Constant"** %call
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZSt4copyIPPN4llvm8ConstantES3_ET0_T_S5_S4_(%"class.llvm::Constant"** %__first, %"class.llvm::Constant"** %__last, %"class.llvm::Constant"** %__result) #0 {
entry:
  %__first.addr = alloca %"class.llvm::Constant"**, align 8
  %__last.addr = alloca %"class.llvm::Constant"**, align 8
  %__result.addr = alloca %"class.llvm::Constant"**, align 8
  store %"class.llvm::Constant"** %__first, %"class.llvm::Constant"*** %__first.addr, align 8
  store %"class.llvm::Constant"** %__last, %"class.llvm::Constant"*** %__last.addr, align 8
  store %"class.llvm::Constant"** %__result, %"class.llvm::Constant"*** %__result.addr, align 8
  %0 = load %"class.llvm::Constant"*** %__first.addr, align 8
  %call = call %"class.llvm::Constant"** @_ZSt12__miter_baseIPPN4llvm8ConstantEENSt11_Miter_baseIT_E13iterator_typeES5_(%"class.llvm::Constant"** %0)
  %1 = load %"class.llvm::Constant"*** %__last.addr, align 8
  %call1 = call %"class.llvm::Constant"** @_ZSt12__miter_baseIPPN4llvm8ConstantEENSt11_Miter_baseIT_E13iterator_typeES5_(%"class.llvm::Constant"** %1)
  %2 = load %"class.llvm::Constant"*** %__result.addr, align 8
  %call2 = call %"class.llvm::Constant"** @_ZSt14__copy_move_a2ILb0EPPN4llvm8ConstantES3_ET1_T0_S5_S4_(%"class.llvm::Constant"** %call, %"class.llvm::Constant"** %call1, %"class.llvm::Constant"** %2)
  ret %"class.llvm::Constant"** %call2
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZSt14__copy_move_a2ILb0EPPN4llvm8ConstantES3_ET1_T0_S5_S4_(%"class.llvm::Constant"** %__first, %"class.llvm::Constant"** %__last, %"class.llvm::Constant"** %__result) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Constant"**, align 8
  %__last.addr = alloca %"class.llvm::Constant"**, align 8
  %__result.addr = alloca %"class.llvm::Constant"**, align 8
  store %"class.llvm::Constant"** %__first, %"class.llvm::Constant"*** %__first.addr, align 8
  store %"class.llvm::Constant"** %__last, %"class.llvm::Constant"*** %__last.addr, align 8
  store %"class.llvm::Constant"** %__result, %"class.llvm::Constant"*** %__result.addr, align 8
  %0 = load %"class.llvm::Constant"*** %__first.addr, align 8
  %call = call %"class.llvm::Constant"** @_ZSt12__niter_baseIPPN4llvm8ConstantEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.llvm::Constant"** %0)
  %1 = load %"class.llvm::Constant"*** %__last.addr, align 8
  %call1 = call %"class.llvm::Constant"** @_ZSt12__niter_baseIPPN4llvm8ConstantEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.llvm::Constant"** %1)
  %2 = load %"class.llvm::Constant"*** %__result.addr, align 8
  %call2 = call %"class.llvm::Constant"** @_ZSt12__niter_baseIPPN4llvm8ConstantEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.llvm::Constant"** %2)
  %call3 = call %"class.llvm::Constant"** @_ZSt13__copy_move_aILb0EPPN4llvm8ConstantES3_ET1_T0_S5_S4_(%"class.llvm::Constant"** %call, %"class.llvm::Constant"** %call1, %"class.llvm::Constant"** %call2)
  ret %"class.llvm::Constant"** %call3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZSt12__miter_baseIPPN4llvm8ConstantEENSt11_Miter_baseIT_E13iterator_typeES5_(%"class.llvm::Constant"** %__it) #8 {
entry:
  %__it.addr = alloca %"class.llvm::Constant"**, align 8
  store %"class.llvm::Constant"** %__it, %"class.llvm::Constant"*** %__it.addr, align 8
  %0 = load %"class.llvm::Constant"*** %__it.addr, align 8
  %call = call %"class.llvm::Constant"** @_ZNSt10_Iter_baseIPPN4llvm8ConstantELb0EE7_S_baseES3_(%"class.llvm::Constant"** %0)
  ret %"class.llvm::Constant"** %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZNSt10_Iter_baseIPPN4llvm8ConstantELb0EE7_S_baseES3_(%"class.llvm::Constant"** %__it) #5 align 2 {
entry:
  %__it.addr = alloca %"class.llvm::Constant"**, align 8
  store %"class.llvm::Constant"** %__it, %"class.llvm::Constant"*** %__it.addr, align 8
  %0 = load %"class.llvm::Constant"*** %__it.addr, align 8
  ret %"class.llvm::Constant"** %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZSt13__copy_move_aILb0EPPN4llvm8ConstantES3_ET1_T0_S5_S4_(%"class.llvm::Constant"** %__first, %"class.llvm::Constant"** %__last, %"class.llvm::Constant"** %__result) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Constant"**, align 8
  %__last.addr = alloca %"class.llvm::Constant"**, align 8
  %__result.addr = alloca %"class.llvm::Constant"**, align 8
  %__simple = alloca i8, align 1
  store %"class.llvm::Constant"** %__first, %"class.llvm::Constant"*** %__first.addr, align 8
  store %"class.llvm::Constant"** %__last, %"class.llvm::Constant"*** %__last.addr, align 8
  store %"class.llvm::Constant"** %__result, %"class.llvm::Constant"*** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load %"class.llvm::Constant"*** %__first.addr, align 8
  %1 = load %"class.llvm::Constant"*** %__last.addr, align 8
  %2 = load %"class.llvm::Constant"*** %__result.addr, align 8
  %call = call %"class.llvm::Constant"** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN4llvm8ConstantEEEPT_PKS6_S9_S7_(%"class.llvm::Constant"** %0, %"class.llvm::Constant"** %1, %"class.llvm::Constant"** %2)
  ret %"class.llvm::Constant"** %call
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZSt12__niter_baseIPPN4llvm8ConstantEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.llvm::Constant"** %__it) #9 {
entry:
  %__it.addr = alloca %"class.llvm::Constant"**, align 8
  store %"class.llvm::Constant"** %__it, %"class.llvm::Constant"*** %__it.addr, align 8
  %0 = load %"class.llvm::Constant"*** %__it.addr, align 8
  %call = call %"class.llvm::Constant"** @_ZNSt10_Iter_baseIPPN4llvm8ConstantELb0EE7_S_baseES3_(%"class.llvm::Constant"** %0)
  ret %"class.llvm::Constant"** %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN4llvm8ConstantEEEPT_PKS6_S9_S7_(%"class.llvm::Constant"** %__first, %"class.llvm::Constant"** %__last, %"class.llvm::Constant"** %__result) #5 align 2 {
entry:
  %__first.addr = alloca %"class.llvm::Constant"**, align 8
  %__last.addr = alloca %"class.llvm::Constant"**, align 8
  %__result.addr = alloca %"class.llvm::Constant"**, align 8
  %_Num = alloca i64, align 8
  store %"class.llvm::Constant"** %__first, %"class.llvm::Constant"*** %__first.addr, align 8
  store %"class.llvm::Constant"** %__last, %"class.llvm::Constant"*** %__last.addr, align 8
  store %"class.llvm::Constant"** %__result, %"class.llvm::Constant"*** %__result.addr, align 8
  %0 = load %"class.llvm::Constant"*** %__last.addr, align 8
  %1 = load %"class.llvm::Constant"*** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.llvm::Constant"** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.llvm::Constant"** %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %"class.llvm::Constant"*** %__result.addr, align 8
  %4 = bitcast %"class.llvm::Constant"** %3 to i8*
  %5 = load %"class.llvm::Constant"*** %__first.addr, align 8
  %6 = bitcast %"class.llvm::Constant"** %5 to i8*
  %7 = load i64* %_Num, align 8
  %mul = mul i64 8, %7
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %4, i8* %6, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %"class.llvm::Constant"*** %__result.addr, align 8
  %9 = load i64* %_Num, align 8
  %add.ptr = getelementptr inbounds %"class.llvm::Constant"** %8, i64 %9
  ret %"class.llvm::Constant"** %add.ptr
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm8ConstantEEE8allocateERS4_m(%"class.std::allocator.68"* %__a, i64 %__n) #0 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.68"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.68"* %__a, %"class.std::allocator.68"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.68"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.68"* %0 to %"class.__gnu_cxx::new_allocator.69"*
  %2 = load i64* %__n.addr, align 8
  %call = call %"class.llvm::Constant"** @_ZN9__gnu_cxx13new_allocatorIPN4llvm8ConstantEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.69"* %1, i64 %2, i8* null)
  ret %"class.llvm::Constant"** %call
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZN9__gnu_cxx13new_allocatorIPN4llvm8ConstantEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.69"* %this, i64 %__n, i8*) #0 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.69"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.69"* %this, %"class.__gnu_cxx::new_allocator.69"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.69"** %this.addr
  %1 = load i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIPN4llvm8ConstantEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.69"* %this1) #7
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #17
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64* %__n.addr, align 8
  %mul = mul i64 %2, 8
  %call2 = call noalias i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %"class.llvm::Constant"**
  ret %"class.llvm::Constant"** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIPN4llvm8ConstantEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.69"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.69"*, align 8
  store %"class.__gnu_cxx::new_allocator.69"* %this, %"class.__gnu_cxx::new_allocator.69"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.69"** %this.addr
  ret i64 2305843009213693951
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIPN4llvm8ConstantESaIS2_EE8max_sizeEv(%"class.std::vector.66"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.66"*, align 8
  store %"class.std::vector.66"* %this, %"class.std::vector.66"** %this.addr, align 8
  %this1 = load %"class.std::vector.66"** %this.addr
  %0 = bitcast %"class.std::vector.66"* %this1 to %"struct.std::_Vector_base.67"*
  %call = call %"class.std::allocator.68"* @_ZNKSt12_Vector_baseIPN4llvm8ConstantESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.67"* %0)
  %call2 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm8ConstantEEE8max_sizeERKS4_(%"class.std::allocator.68"* %call)
  ret i64 %call2
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm8ConstantEEE8max_sizeERKS4_(%"class.std::allocator.68"* %__a) #5 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.68"*, align 8
  store %"class.std::allocator.68"* %__a, %"class.std::allocator.68"** %__a.addr, align 8
  %0 = load %"class.std::allocator.68"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.68"* %0 to %"class.__gnu_cxx::new_allocator.69"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIPN4llvm8ConstantEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.69"* %1) #7
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.68"* @_ZNKSt12_Vector_baseIPN4llvm8ConstantESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.67"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.67"*, align 8
  store %"struct.std::_Vector_base.67"* %this, %"struct.std::_Vector_base.67"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.67"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.67"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl to %"class.std::allocator.68"*
  ret %"class.std::allocator.68"* %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZSt23__copy_move_backward_a2ILb0EPPN4llvm8ConstantES3_ET1_T0_S5_S4_(%"class.llvm::Constant"** %__first, %"class.llvm::Constant"** %__last, %"class.llvm::Constant"** %__result) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Constant"**, align 8
  %__last.addr = alloca %"class.llvm::Constant"**, align 8
  %__result.addr = alloca %"class.llvm::Constant"**, align 8
  store %"class.llvm::Constant"** %__first, %"class.llvm::Constant"*** %__first.addr, align 8
  store %"class.llvm::Constant"** %__last, %"class.llvm::Constant"*** %__last.addr, align 8
  store %"class.llvm::Constant"** %__result, %"class.llvm::Constant"*** %__result.addr, align 8
  %0 = load %"class.llvm::Constant"*** %__first.addr, align 8
  %call = call %"class.llvm::Constant"** @_ZSt12__niter_baseIPPN4llvm8ConstantEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.llvm::Constant"** %0)
  %1 = load %"class.llvm::Constant"*** %__last.addr, align 8
  %call1 = call %"class.llvm::Constant"** @_ZSt12__niter_baseIPPN4llvm8ConstantEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.llvm::Constant"** %1)
  %2 = load %"class.llvm::Constant"*** %__result.addr, align 8
  %call2 = call %"class.llvm::Constant"** @_ZSt12__niter_baseIPPN4llvm8ConstantEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.llvm::Constant"** %2)
  %call3 = call %"class.llvm::Constant"** @_ZSt22__copy_move_backward_aILb0EPPN4llvm8ConstantES3_ET1_T0_S5_S4_(%"class.llvm::Constant"** %call, %"class.llvm::Constant"** %call1, %"class.llvm::Constant"** %call2)
  ret %"class.llvm::Constant"** %call3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZSt22__copy_move_backward_aILb0EPPN4llvm8ConstantES3_ET1_T0_S5_S4_(%"class.llvm::Constant"** %__first, %"class.llvm::Constant"** %__last, %"class.llvm::Constant"** %__result) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Constant"**, align 8
  %__last.addr = alloca %"class.llvm::Constant"**, align 8
  %__result.addr = alloca %"class.llvm::Constant"**, align 8
  %__simple = alloca i8, align 1
  store %"class.llvm::Constant"** %__first, %"class.llvm::Constant"*** %__first.addr, align 8
  store %"class.llvm::Constant"** %__last, %"class.llvm::Constant"*** %__last.addr, align 8
  store %"class.llvm::Constant"** %__result, %"class.llvm::Constant"*** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load %"class.llvm::Constant"*** %__first.addr, align 8
  %1 = load %"class.llvm::Constant"*** %__last.addr, align 8
  %2 = load %"class.llvm::Constant"*** %__result.addr, align 8
  %call = call %"class.llvm::Constant"** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN4llvm8ConstantEEEPT_PKS6_S9_S7_(%"class.llvm::Constant"** %0, %"class.llvm::Constant"** %1, %"class.llvm::Constant"** %2)
  ret %"class.llvm::Constant"** %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN4llvm8ConstantEEEPT_PKS6_S9_S7_(%"class.llvm::Constant"** %__first, %"class.llvm::Constant"** %__last, %"class.llvm::Constant"** %__result) #5 align 2 {
entry:
  %__first.addr = alloca %"class.llvm::Constant"**, align 8
  %__last.addr = alloca %"class.llvm::Constant"**, align 8
  %__result.addr = alloca %"class.llvm::Constant"**, align 8
  %_Num = alloca i64, align 8
  store %"class.llvm::Constant"** %__first, %"class.llvm::Constant"*** %__first.addr, align 8
  store %"class.llvm::Constant"** %__last, %"class.llvm::Constant"*** %__last.addr, align 8
  store %"class.llvm::Constant"** %__result, %"class.llvm::Constant"*** %__result.addr, align 8
  %0 = load %"class.llvm::Constant"*** %__last.addr, align 8
  %1 = load %"class.llvm::Constant"*** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.llvm::Constant"** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.llvm::Constant"** %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %"class.llvm::Constant"*** %__result.addr, align 8
  %4 = load i64* %_Num, align 8
  %idx.neg = sub i64 0, %4
  %add.ptr = getelementptr inbounds %"class.llvm::Constant"** %3, i64 %idx.neg
  %5 = bitcast %"class.llvm::Constant"** %add.ptr to i8*
  %6 = load %"class.llvm::Constant"*** %__first.addr, align 8
  %7 = bitcast %"class.llvm::Constant"** %6 to i8*
  %8 = load i64* %_Num, align 8
  %mul = mul i64 8, %8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %5, i8* %7, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %"class.llvm::Constant"*** %__result.addr, align 8
  %10 = load i64* %_Num, align 8
  %idx.neg1 = sub i64 0, %10
  %add.ptr2 = getelementptr inbounds %"class.llvm::Constant"** %9, i64 %idx.neg1
  ret %"class.llvm::Constant"** %add.ptr2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPN4llvm8ConstantEE9constructEPS3_RKS3_(%"class.__gnu_cxx::new_allocator.69"* %this, %"class.llvm::Constant"** %__p, %"class.llvm::Constant"** %__val) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.69"*, align 8
  %__p.addr = alloca %"class.llvm::Constant"**, align 8
  %__val.addr = alloca %"class.llvm::Constant"**, align 8
  store %"class.__gnu_cxx::new_allocator.69"* %this, %"class.__gnu_cxx::new_allocator.69"** %this.addr, align 8
  store %"class.llvm::Constant"** %__p, %"class.llvm::Constant"*** %__p.addr, align 8
  store %"class.llvm::Constant"** %__val, %"class.llvm::Constant"*** %__val.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.69"** %this.addr
  %0 = load %"class.llvm::Constant"*** %__p.addr, align 8
  %1 = bitcast %"class.llvm::Constant"** %0 to i8*
  %new.isnull = icmp eq i8* %1, null
  br i1 %new.isnull, label %new.cont, label %new.notnull

new.notnull:                                      ; preds = %entry
  %2 = bitcast i8* %1 to %"class.llvm::Constant"**
  %3 = load %"class.llvm::Constant"*** %__val.addr, align 8
  %4 = load %"class.llvm::Constant"** %3, align 8
  store %"class.llvm::Constant"* %4, %"class.llvm::Constant"** %2, align 8
  br label %new.cont

new.cont:                                         ; preds = %new.notnull, %entry
  %5 = phi %"class.llvm::Constant"** [ %2, %new.notnull ], [ null, %entry ]
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN4llvm8ConstantESaIS2_EED2Ev(%"struct.std::_Vector_base.67"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.67"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base.67"* %this, %"struct.std::_Vector_base.67"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.67"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.67"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load %"class.llvm::Constant"*** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.67"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load %"class.llvm::Constant"*** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.67"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load %"class.llvm::Constant"*** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.llvm::Constant"** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.llvm::Constant"** %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  invoke void @_ZNSt12_Vector_baseIPN4llvm8ConstantESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base.67"* %this1, %"class.llvm::Constant"** %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.67"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIPN4llvm8ConstantESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl5) #7
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.67"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIPN4llvm8ConstantESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl6) #7
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN4llvm8ConstantESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %this) unnamed_addr #9 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"** %this.addr
  %0 = bitcast %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %this1 to %"class.std::allocator.68"*
  call void @_ZNSaIPN4llvm8ConstantEED2Ev(%"class.std::allocator.68"* %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPN4llvm8ConstantEED2Ev(%"class.std::allocator.68"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.68"*, align 8
  store %"class.std::allocator.68"* %this, %"class.std::allocator.68"** %this.addr, align 8
  %this1 = load %"class.std::allocator.68"** %this.addr
  %0 = bitcast %"class.std::allocator.68"* %this1 to %"class.__gnu_cxx::new_allocator.69"*
  call void @_ZN9__gnu_cxx13new_allocatorIPN4llvm8ConstantEED2Ev(%"class.__gnu_cxx::new_allocator.69"* %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPN4llvm8ConstantEED2Ev(%"class.__gnu_cxx::new_allocator.69"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.69"*, align 8
  store %"class.__gnu_cxx::new_allocator.69"* %this, %"class.__gnu_cxx::new_allocator.69"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.69"** %this.addr
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN4llvm8ConstantESaIS2_EEC2Ev(%"struct.std::_Vector_base.67"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.67"*, align 8
  store %"struct.std::_Vector_base.67"* %this, %"struct.std::_Vector_base.67"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.67"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.67"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIPN4llvm8ConstantESaIS2_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %_M_impl)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN4llvm8ConstantESaIS2_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"** %this.addr
  %0 = bitcast %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %this1 to %"class.std::allocator.68"*
  call void @_ZNSaIPN4llvm8ConstantEEC2Ev(%"class.std::allocator.68"* %0) #7
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %this1, i32 0, i32 0
  store %"class.llvm::Constant"** null, %"class.llvm::Constant"*** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %this1, i32 0, i32 1
  store %"class.llvm::Constant"** null, %"class.llvm::Constant"*** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<llvm::Constant *, std::allocator<llvm::Constant *> >::_Vector_impl"* %this1, i32 0, i32 2
  store %"class.llvm::Constant"** null, %"class.llvm::Constant"*** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPN4llvm8ConstantEEC2Ev(%"class.std::allocator.68"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.68"*, align 8
  store %"class.std::allocator.68"* %this, %"class.std::allocator.68"** %this.addr, align 8
  %this1 = load %"class.std::allocator.68"** %this.addr
  %0 = bitcast %"class.std::allocator.68"* %this1 to %"class.__gnu_cxx::new_allocator.69"*
  call void @_ZN9__gnu_cxx13new_allocatorIPN4llvm8ConstantEEC2Ev(%"class.__gnu_cxx::new_allocator.69"* %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPN4llvm8ConstantEEC2Ev(%"class.__gnu_cxx::new_allocator.69"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.69"*, align 8
  store %"class.__gnu_cxx::new_allocator.69"* %this, %"class.__gnu_cxx::new_allocator.69"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.69"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::AttributeSet"* @_ZNK4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE4dataEv(%"class.llvm::SmallVectorTemplateCommon"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::SmallVectorTemplateCommon"*, align 8
  store %"class.llvm::SmallVectorTemplateCommon"* %this, %"class.llvm::SmallVectorTemplateCommon"** %this.addr, align 8
  %this1 = load %"class.llvm::SmallVectorTemplateCommon"** %this.addr
  %call = call %"class.llvm::AttributeSet"* @_ZNK4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE5beginEv(%"class.llvm::SmallVectorTemplateCommon"* %this1)
  ret %"class.llvm::AttributeSet"* %call
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNK4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE4sizeEv(%"class.llvm::SmallVectorTemplateCommon"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::SmallVectorTemplateCommon"*, align 8
  store %"class.llvm::SmallVectorTemplateCommon"* %this, %"class.llvm::SmallVectorTemplateCommon"** %this.addr, align 8
  %this1 = load %"class.llvm::SmallVectorTemplateCommon"** %this.addr
  %call = call %"class.llvm::AttributeSet"* @_ZNK4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE3endEv(%"class.llvm::SmallVectorTemplateCommon"* %this1)
  %call2 = call %"class.llvm::AttributeSet"* @_ZNK4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE5beginEv(%"class.llvm::SmallVectorTemplateCommon"* %this1)
  %sub.ptr.lhs.cast = ptrtoint %"class.llvm::AttributeSet"* %call to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.llvm::AttributeSet"* %call2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::AttributeSet"* @_ZNK4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE3endEv(%"class.llvm::SmallVectorTemplateCommon"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::SmallVectorTemplateCommon"*, align 8
  store %"class.llvm::SmallVectorTemplateCommon"* %this, %"class.llvm::SmallVectorTemplateCommon"** %this.addr, align 8
  %this1 = load %"class.llvm::SmallVectorTemplateCommon"** %this.addr
  %0 = bitcast %"class.llvm::SmallVectorTemplateCommon"* %this1 to %"class.llvm::SmallVectorBase"*
  %EndX = getelementptr inbounds %"class.llvm::SmallVectorBase"* %0, i32 0, i32 1
  %1 = load i8** %EndX, align 8
  %2 = bitcast i8* %1 to %"class.llvm::AttributeSet"*
  ret %"class.llvm::AttributeSet"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::AttributeSet"* @_ZNK4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE5beginEv(%"class.llvm::SmallVectorTemplateCommon"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::SmallVectorTemplateCommon"*, align 8
  store %"class.llvm::SmallVectorTemplateCommon"* %this, %"class.llvm::SmallVectorTemplateCommon"** %this.addr, align 8
  %this1 = load %"class.llvm::SmallVectorTemplateCommon"** %this.addr
  %0 = bitcast %"class.llvm::SmallVectorTemplateCommon"* %this1 to %"class.llvm::SmallVectorBase"*
  %BeginX = getelementptr inbounds %"class.llvm::SmallVectorBase"* %0, i32 0, i32 0
  %1 = load i8** %BeginX, align 8
  %2 = bitcast i8* %1 to %"class.llvm::AttributeSet"*
  ret %"class.llvm::AttributeSet"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::AttributeSet"* @_ZN4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE3endEv(%"class.llvm::SmallVectorTemplateCommon"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::SmallVectorTemplateCommon"*, align 8
  store %"class.llvm::SmallVectorTemplateCommon"* %this, %"class.llvm::SmallVectorTemplateCommon"** %this.addr, align 8
  %this1 = load %"class.llvm::SmallVectorTemplateCommon"** %this.addr
  %0 = bitcast %"class.llvm::SmallVectorTemplateCommon"* %this1 to %"class.llvm::SmallVectorBase"*
  %EndX = getelementptr inbounds %"class.llvm::SmallVectorBase"* %0, i32 0, i32 1
  %1 = load i8** %EndX, align 8
  %2 = bitcast i8* %1 to %"class.llvm::AttributeSet"*
  ret %"class.llvm::AttributeSet"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE6setEndEPS1_(%"class.llvm::SmallVectorTemplateCommon"* %this, %"class.llvm::AttributeSet"* %P) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::SmallVectorTemplateCommon"*, align 8
  %P.addr = alloca %"class.llvm::AttributeSet"*, align 8
  store %"class.llvm::SmallVectorTemplateCommon"* %this, %"class.llvm::SmallVectorTemplateCommon"** %this.addr, align 8
  store %"class.llvm::AttributeSet"* %P, %"class.llvm::AttributeSet"** %P.addr, align 8
  %this1 = load %"class.llvm::SmallVectorTemplateCommon"** %this.addr
  %0 = load %"class.llvm::AttributeSet"** %P.addr, align 8
  %1 = bitcast %"class.llvm::AttributeSet"* %0 to i8*
  %2 = bitcast %"class.llvm::SmallVectorTemplateCommon"* %this1 to %"class.llvm::SmallVectorBase"*
  %EndX = getelementptr inbounds %"class.llvm::SmallVectorBase"* %2, i32 0, i32 1
  store i8* %1, i8** %EndX, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINS_12AttributeSetELb1EE4growEm(%"class.llvm::SmallVectorTemplateBase"* %this, i64 %MinSize) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::SmallVectorTemplateBase"*, align 8
  %MinSize.addr = alloca i64, align 8
  store %"class.llvm::SmallVectorTemplateBase"* %this, %"class.llvm::SmallVectorTemplateBase"** %this.addr, align 8
  store i64 %MinSize, i64* %MinSize.addr, align 8
  %this1 = load %"class.llvm::SmallVectorTemplateBase"** %this.addr
  %0 = bitcast %"class.llvm::SmallVectorTemplateBase"* %this1 to %"class.llvm::SmallVectorTemplateCommon"*
  %1 = load i64* %MinSize.addr, align 8
  %mul = mul i64 %1, 8
  call void @_ZN4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE8grow_podEmm(%"class.llvm::SmallVectorTemplateCommon"* %0, i64 %mul, i64 8)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE8grow_podEmm(%"class.llvm::SmallVectorTemplateCommon"* %this, i64 %MinSizeInBytes, i64 %TSize) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::SmallVectorTemplateCommon"*, align 8
  %MinSizeInBytes.addr = alloca i64, align 8
  %TSize.addr = alloca i64, align 8
  store %"class.llvm::SmallVectorTemplateCommon"* %this, %"class.llvm::SmallVectorTemplateCommon"** %this.addr, align 8
  store i64 %MinSizeInBytes, i64* %MinSizeInBytes.addr, align 8
  store i64 %TSize, i64* %TSize.addr, align 8
  %this1 = load %"class.llvm::SmallVectorTemplateCommon"** %this.addr
  %0 = bitcast %"class.llvm::SmallVectorTemplateCommon"* %this1 to %"class.llvm::SmallVectorBase"*
  %FirstEl = getelementptr inbounds %"class.llvm::SmallVectorTemplateCommon"* %this1, i32 0, i32 1
  %1 = bitcast %"struct.llvm::AlignedCharArrayUnion"* %FirstEl to i8*
  %2 = load i64* %MinSizeInBytes.addr, align 8
  %3 = load i64* %TSize.addr, align 8
  call void @_ZN4llvm15SmallVectorBase8grow_podEPvmm(%"class.llvm::SmallVectorBase"* %0, i8* %1, i64 %2, i64 %3)
  ret void
}

declare void @_ZN4llvm15SmallVectorBase8grow_podEPvmm(%"class.llvm::SmallVectorBase"*, i8*, i64, i64) #1

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm15SmallVectorImplINS_12AttributeSetEEC2Ej(%"class.llvm::SmallVectorImpl"* %this, i32 %N) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::SmallVectorImpl"*, align 8
  %N.addr = alloca i32, align 4
  store %"class.llvm::SmallVectorImpl"* %this, %"class.llvm::SmallVectorImpl"** %this.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  %this1 = load %"class.llvm::SmallVectorImpl"** %this.addr
  %0 = bitcast %"class.llvm::SmallVectorImpl"* %this1 to %"class.llvm::SmallVectorTemplateBase"*
  %1 = load i32* %N.addr, align 4
  %conv = zext i32 %1 to i64
  %mul = mul i64 %conv, 8
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_12AttributeSetELb1EEC2Em(%"class.llvm::SmallVectorTemplateBase"* %0, i64 %mul)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINS_12AttributeSetELb1EEC2Em(%"class.llvm::SmallVectorTemplateBase"* %this, i64 %Size) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::SmallVectorTemplateBase"*, align 8
  %Size.addr = alloca i64, align 8
  store %"class.llvm::SmallVectorTemplateBase"* %this, %"class.llvm::SmallVectorTemplateBase"** %this.addr, align 8
  store i64 %Size, i64* %Size.addr, align 8
  %this1 = load %"class.llvm::SmallVectorTemplateBase"** %this.addr
  %0 = bitcast %"class.llvm::SmallVectorTemplateBase"* %this1 to %"class.llvm::SmallVectorTemplateCommon"*
  %1 = load i64* %Size.addr, align 8
  call void @_ZN4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvEC2Em(%"class.llvm::SmallVectorTemplateCommon"* %0, i64 %1)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvEC2Em(%"class.llvm::SmallVectorTemplateCommon"* %this, i64 %Size) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::SmallVectorTemplateCommon"*, align 8
  %Size.addr = alloca i64, align 8
  store %"class.llvm::SmallVectorTemplateCommon"* %this, %"class.llvm::SmallVectorTemplateCommon"** %this.addr, align 8
  store i64 %Size, i64* %Size.addr, align 8
  %this1 = load %"class.llvm::SmallVectorTemplateCommon"** %this.addr
  %0 = bitcast %"class.llvm::SmallVectorTemplateCommon"* %this1 to %"class.llvm::SmallVectorBase"*
  %FirstEl = getelementptr inbounds %"class.llvm::SmallVectorTemplateCommon"* %this1, i32 0, i32 1
  %1 = bitcast %"struct.llvm::AlignedCharArrayUnion"* %FirstEl to i8*
  %2 = load i64* %Size.addr, align 8
  call void @_ZN4llvm15SmallVectorBaseC2EPvm(%"class.llvm::SmallVectorBase"* %0, i8* %1, i64 %2)
  %FirstEl2 = getelementptr inbounds %"class.llvm::SmallVectorTemplateCommon"* %this1, i32 0, i32 1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4llvm15SmallVectorBaseC2EPvm(%"class.llvm::SmallVectorBase"* %this, i8* %FirstEl, i64 %Size) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::SmallVectorBase"*, align 8
  %FirstEl.addr = alloca i8*, align 8
  %Size.addr = alloca i64, align 8
  store %"class.llvm::SmallVectorBase"* %this, %"class.llvm::SmallVectorBase"** %this.addr, align 8
  store i8* %FirstEl, i8** %FirstEl.addr, align 8
  store i64 %Size, i64* %Size.addr, align 8
  %this1 = load %"class.llvm::SmallVectorBase"** %this.addr
  %BeginX = getelementptr inbounds %"class.llvm::SmallVectorBase"* %this1, i32 0, i32 0
  %0 = load i8** %FirstEl.addr, align 8
  store i8* %0, i8** %BeginX, align 8
  %EndX = getelementptr inbounds %"class.llvm::SmallVectorBase"* %this1, i32 0, i32 1
  %1 = load i8** %FirstEl.addr, align 8
  store i8* %1, i8** %EndX, align 8
  %CapacityX = getelementptr inbounds %"class.llvm::SmallVectorBase"* %this1, i32 0, i32 2
  %2 = load i8** %FirstEl.addr, align 8
  %3 = load i64* %Size.addr, align 8
  %add.ptr = getelementptr inbounds i8* %2, i64 %3
  store i8* %add.ptr, i8** %CapacityX, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE5emptyEv(%"class.std::vector.56"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.56"*, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.81", align 8
  %ref.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator.81", align 8
  store %"class.std::vector.56"* %this, %"class.std::vector.56"** %this.addr, align 8
  %this1 = load %"class.std::vector.56"** %this.addr
  %call = call %"class.llvm::Type"** @_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE5beginEv(%"class.std::vector.56"* %this1)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.81"* %ref.tmp, i32 0, i32 0
  store %"class.llvm::Type"** %call, %"class.llvm::Type"*** %coerce.dive
  %call3 = call %"class.llvm::Type"** @_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE3endEv(%"class.std::vector.56"* %this1)
  %coerce.dive4 = getelementptr %"class.__gnu_cxx::__normal_iterator.81"* %ref.tmp2, i32 0, i32 0
  store %"class.llvm::Type"** %call3, %"class.llvm::Type"*** %coerce.dive4
  %call5 = call zeroext i1 @_ZN9__gnu_cxxeqIPKPN4llvm4TypeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(%"class.__gnu_cxx::__normal_iterator.81"* %ref.tmp, %"class.__gnu_cxx::__normal_iterator.81"* %ref.tmp2)
  ret i1 %call5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Type"** @_ZNKSt6vectorIPN4llvm4TypeESaIS2_EEixEm(%"class.std::vector.56"* %this, i64 %__n) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.56"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector.56"* %this, %"class.std::vector.56"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector.56"** %this.addr
  %0 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.57"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"class.llvm::Type"*** %_M_start, align 8
  %2 = load i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"class.llvm::Type"** %1, i64 %2
  ret %"class.llvm::Type"** %add.ptr
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE4sizeEv(%"class.std::vector.56"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.56"*, align 8
  store %"class.std::vector.56"* %this, %"class.std::vector.56"** %this.addr, align 8
  %this1 = load %"class.std::vector.56"** %this.addr
  %0 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.57"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %"class.llvm::Type"*** %_M_finish, align 8
  %2 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.57"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load %"class.llvm::Type"*** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.llvm::Type"** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.llvm::Type"** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: inlinehint uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxeqIPKPN4llvm4TypeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(%"class.__gnu_cxx::__normal_iterator.81"* %__lhs, %"class.__gnu_cxx::__normal_iterator.81"* %__rhs) #8 {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.81"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.81"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.81"* %__lhs, %"class.__gnu_cxx::__normal_iterator.81"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator.81"* %__rhs, %"class.__gnu_cxx::__normal_iterator.81"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator.81"** %__lhs.addr, align 8
  %call = call %"class.llvm::Type"*** @_ZNK9__gnu_cxx17__normal_iteratorIPKPN4llvm4TypeESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.81"* %0)
  %1 = load %"class.llvm::Type"*** %call
  %2 = load %"class.__gnu_cxx::__normal_iterator.81"** %__rhs.addr, align 8
  %call1 = call %"class.llvm::Type"*** @_ZNK9__gnu_cxx17__normal_iteratorIPKPN4llvm4TypeESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.81"* %2)
  %3 = load %"class.llvm::Type"*** %call1
  %cmp = icmp eq %"class.llvm::Type"** %1, %3
  ret i1 %cmp
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Type"** @_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE5beginEv(%"class.std::vector.56"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.81", align 8
  %this.addr = alloca %"class.std::vector.56"*, align 8
  %ref.tmp = alloca %"class.llvm::Type"**, align 8
  store %"class.std::vector.56"* %this, %"class.std::vector.56"** %this.addr, align 8
  %this1 = load %"class.std::vector.56"** %this.addr
  %0 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.57"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"class.llvm::Type"*** %_M_start, align 8
  store %"class.llvm::Type"** %1, %"class.llvm::Type"*** %ref.tmp
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKPN4llvm4TypeESt6vectorIS3_SaIS3_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator.81"* %retval, %"class.llvm::Type"*** %ref.tmp)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.81"* %retval, i32 0, i32 0
  %2 = load %"class.llvm::Type"*** %coerce.dive
  ret %"class.llvm::Type"** %2
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Type"** @_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE3endEv(%"class.std::vector.56"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.81", align 8
  %this.addr = alloca %"class.std::vector.56"*, align 8
  %ref.tmp = alloca %"class.llvm::Type"**, align 8
  store %"class.std::vector.56"* %this, %"class.std::vector.56"** %this.addr, align 8
  %this1 = load %"class.std::vector.56"** %this.addr
  %0 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.57"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %"class.llvm::Type"*** %_M_finish, align 8
  store %"class.llvm::Type"** %1, %"class.llvm::Type"*** %ref.tmp
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKPN4llvm4TypeESt6vectorIS3_SaIS3_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator.81"* %retval, %"class.llvm::Type"*** %ref.tmp)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.81"* %retval, i32 0, i32 0
  %2 = load %"class.llvm::Type"*** %coerce.dive
  ret %"class.llvm::Type"** %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPKPN4llvm4TypeESt6vectorIS3_SaIS3_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator.81"* %this, %"class.llvm::Type"*** %__i) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.81"*, align 8
  %__i.addr = alloca %"class.llvm::Type"***, align 8
  store %"class.__gnu_cxx::__normal_iterator.81"* %this, %"class.__gnu_cxx::__normal_iterator.81"** %this.addr, align 8
  store %"class.llvm::Type"*** %__i, %"class.llvm::Type"**** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.81"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.81"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::Type"**** %__i.addr, align 8
  %1 = load %"class.llvm::Type"*** %0, align 8
  store %"class.llvm::Type"** %1, %"class.llvm::Type"*** %_M_current, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Type"*** @_ZNK9__gnu_cxx17__normal_iteratorIPKPN4llvm4TypeESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.81"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.81"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.81"* %this, %"class.__gnu_cxx::__normal_iterator.81"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.81"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.81"* %this1, i32 0, i32 0
  ret %"class.llvm::Type"*** %_M_current
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm4TypeEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator.58"* %__a, %"class.llvm::Type"** %__p, %"class.llvm::Type"** %__arg) #0 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.58"*, align 8
  %__p.addr = alloca %"class.llvm::Type"**, align 8
  %__arg.addr = alloca %"class.llvm::Type"**, align 8
  store %"class.std::allocator.58"* %__a, %"class.std::allocator.58"** %__a.addr, align 8
  store %"class.llvm::Type"** %__p, %"class.llvm::Type"*** %__p.addr, align 8
  store %"class.llvm::Type"** %__arg, %"class.llvm::Type"*** %__arg.addr, align 8
  %0 = load %"class.std::allocator.58"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.58"* %0 to %"class.__gnu_cxx::new_allocator.59"*
  %2 = load %"class.llvm::Type"*** %__p.addr, align 8
  %3 = load %"class.llvm::Type"*** %__arg.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPN4llvm4TypeEE9constructEPS3_RKS3_(%"class.__gnu_cxx::new_allocator.59"* %1, %"class.llvm::Type"** %2, %"class.llvm::Type"** %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIPN4llvm4TypeESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_(%"class.std::vector.56"* %this, %"class.llvm::Type"** %__position.coerce, %"class.llvm::Type"** %__x) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.56"*, align 8
  %__position = alloca %"class.__gnu_cxx::__normal_iterator.82", align 8
  %__x.addr = alloca %"class.llvm::Type"**, align 8
  %__x_copy = alloca %"class.llvm::Type"*, align 8
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.82", align 8
  %__new_start = alloca %"class.llvm::Type"**, align 8
  %__new_finish = alloca %"class.llvm::Type"**, align 8
  store %"class.std::vector.56"* %this, %"class.std::vector.56"** %this.addr, align 8
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.82"* %__position, i32 0, i32 0
  store %"class.llvm::Type"** %__position.coerce, %"class.llvm::Type"*** %coerce.dive
  store %"class.llvm::Type"** %__x, %"class.llvm::Type"*** %__x.addr, align 8
  %this1 = load %"class.std::vector.56"** %this.addr
  %0 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.57"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %"class.llvm::Type"*** %_M_finish, align 8
  %2 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.57"* %2, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %3 = load %"class.llvm::Type"*** %_M_end_of_storage, align 8
  %cmp = icmp ne %"class.llvm::Type"** %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.57"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl3 to %"class.std::allocator.58"*
  %6 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.57"* %6, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  %7 = load %"class.llvm::Type"*** %_M_finish5, align 8
  %8 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.57"* %8, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %9 = load %"class.llvm::Type"*** %_M_finish7, align 8
  %add.ptr = getelementptr inbounds %"class.llvm::Type"** %9, i64 -1
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm4TypeEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator.58"* %5, %"class.llvm::Type"** %7, %"class.llvm::Type"** %add.ptr)
  %10 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl8 = getelementptr inbounds %"struct.std::_Vector_base.57"* %10, i32 0, i32 0
  %_M_finish9 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl8, i32 0, i32 1
  %11 = load %"class.llvm::Type"*** %_M_finish9, align 8
  %incdec.ptr = getelementptr inbounds %"class.llvm::Type"** %11, i32 1
  store %"class.llvm::Type"** %incdec.ptr, %"class.llvm::Type"*** %_M_finish9, align 8
  %12 = load %"class.llvm::Type"*** %__x.addr, align 8
  %13 = load %"class.llvm::Type"** %12, align 8
  store %"class.llvm::Type"* %13, %"class.llvm::Type"** %__x_copy, align 8
  %call = call %"class.llvm::Type"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm4TypeESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.82"* %__position)
  %14 = load %"class.llvm::Type"*** %call
  %15 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl10 = getelementptr inbounds %"struct.std::_Vector_base.57"* %15, i32 0, i32 0
  %_M_finish11 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl10, i32 0, i32 1
  %16 = load %"class.llvm::Type"*** %_M_finish11, align 8
  %add.ptr12 = getelementptr inbounds %"class.llvm::Type"** %16, i64 -2
  %17 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base.57"* %17, i32 0, i32 0
  %_M_finish14 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl13, i32 0, i32 1
  %18 = load %"class.llvm::Type"*** %_M_finish14, align 8
  %add.ptr15 = getelementptr inbounds %"class.llvm::Type"** %18, i64 -1
  %call16 = call %"class.llvm::Type"** @_ZSt13copy_backwardIPPN4llvm4TypeES3_ET0_T_S5_S4_(%"class.llvm::Type"** %14, %"class.llvm::Type"** %add.ptr12, %"class.llvm::Type"** %add.ptr15)
  %19 = load %"class.llvm::Type"** %__x_copy, align 8
  %call17 = call %"class.llvm::Type"** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm4TypeESt6vectorIS3_SaIS3_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.82"* %__position)
  store %"class.llvm::Type"* %19, %"class.llvm::Type"** %call17
  br label %if.end

if.else:                                          ; preds = %entry
  %call18 = call i64 @_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE12_M_check_lenEmPKc(%"class.std::vector.56"* %this1, i64 1, i8* getelementptr inbounds ([22 x i8]* @.str27, i32 0, i32 0))
  store i64 %call18, i64* %__len, align 8
  %call19 = call %"class.llvm::Type"** @_ZNSt6vectorIPN4llvm4TypeESaIS2_EE5beginEv(%"class.std::vector.56"* %this1)
  %coerce.dive20 = getelementptr %"class.__gnu_cxx::__normal_iterator.82"* %ref.tmp, i32 0, i32 0
  store %"class.llvm::Type"** %call19, %"class.llvm::Type"*** %coerce.dive20
  %call21 = call i64 @_ZN9__gnu_cxxmiIPPN4llvm4TypeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(%"class.__gnu_cxx::__normal_iterator.82"* %__position, %"class.__gnu_cxx::__normal_iterator.82"* %ref.tmp)
  store i64 %call21, i64* %__elems_before, align 8
  %20 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %21 = load i64* %__len, align 8
  %call22 = call %"class.llvm::Type"** @_ZNSt12_Vector_baseIPN4llvm4TypeESaIS2_EE11_M_allocateEm(%"struct.std::_Vector_base.57"* %20, i64 %21)
  store %"class.llvm::Type"** %call22, %"class.llvm::Type"*** %__new_start, align 8
  %22 = load %"class.llvm::Type"*** %__new_start, align 8
  store %"class.llvm::Type"** %22, %"class.llvm::Type"*** %__new_finish, align 8
  %23 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl23 = getelementptr inbounds %"struct.std::_Vector_base.57"* %23, i32 0, i32 0
  %24 = bitcast %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl23 to %"class.std::allocator.58"*
  %25 = load %"class.llvm::Type"*** %__new_start, align 8
  %26 = load i64* %__elems_before, align 8
  %add.ptr24 = getelementptr inbounds %"class.llvm::Type"** %25, i64 %26
  %27 = load %"class.llvm::Type"*** %__x.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm4TypeEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator.58"* %24, %"class.llvm::Type"** %add.ptr24, %"class.llvm::Type"** %27)
  store %"class.llvm::Type"** null, %"class.llvm::Type"*** %__new_finish, align 8
  %28 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl25 = getelementptr inbounds %"struct.std::_Vector_base.57"* %28, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl25, i32 0, i32 0
  %29 = load %"class.llvm::Type"*** %_M_start, align 8
  %call26 = call %"class.llvm::Type"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm4TypeESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.82"* %__position)
  %30 = load %"class.llvm::Type"*** %call26
  %31 = load %"class.llvm::Type"*** %__new_start, align 8
  %32 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %call27 = call %"class.std::allocator.58"* @_ZNSt12_Vector_baseIPN4llvm4TypeESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.57"* %32)
  %call28 = call %"class.llvm::Type"** @_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm4TypeES3_SaIS2_EET0_T_S6_S5_RT1_(%"class.llvm::Type"** %29, %"class.llvm::Type"** %30, %"class.llvm::Type"** %31, %"class.std::allocator.58"* %call27)
  store %"class.llvm::Type"** %call28, %"class.llvm::Type"*** %__new_finish, align 8
  %33 = load %"class.llvm::Type"*** %__new_finish, align 8
  %incdec.ptr29 = getelementptr inbounds %"class.llvm::Type"** %33, i32 1
  store %"class.llvm::Type"** %incdec.ptr29, %"class.llvm::Type"*** %__new_finish, align 8
  %call30 = call %"class.llvm::Type"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm4TypeESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.82"* %__position)
  %34 = load %"class.llvm::Type"*** %call30
  %35 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl31 = getelementptr inbounds %"struct.std::_Vector_base.57"* %35, i32 0, i32 0
  %_M_finish32 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl31, i32 0, i32 1
  %36 = load %"class.llvm::Type"*** %_M_finish32, align 8
  %37 = load %"class.llvm::Type"*** %__new_finish, align 8
  %38 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %call33 = call %"class.std::allocator.58"* @_ZNSt12_Vector_baseIPN4llvm4TypeESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.57"* %38)
  %call34 = call %"class.llvm::Type"** @_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm4TypeES3_SaIS2_EET0_T_S6_S5_RT1_(%"class.llvm::Type"** %34, %"class.llvm::Type"** %36, %"class.llvm::Type"** %37, %"class.std::allocator.58"* %call33)
  store %"class.llvm::Type"** %call34, %"class.llvm::Type"*** %__new_finish, align 8
  %39 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl35 = getelementptr inbounds %"struct.std::_Vector_base.57"* %39, i32 0, i32 0
  %_M_start36 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl35, i32 0, i32 0
  %40 = load %"class.llvm::Type"*** %_M_start36, align 8
  %41 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl37 = getelementptr inbounds %"struct.std::_Vector_base.57"* %41, i32 0, i32 0
  %_M_finish38 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl37, i32 0, i32 1
  %42 = load %"class.llvm::Type"*** %_M_finish38, align 8
  %43 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %call39 = call %"class.std::allocator.58"* @_ZNSt12_Vector_baseIPN4llvm4TypeESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.57"* %43)
  call void @_ZSt8_DestroyIPPN4llvm4TypeES2_EvT_S4_RSaIT0_E(%"class.llvm::Type"** %40, %"class.llvm::Type"** %42, %"class.std::allocator.58"* %call39)
  %44 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %45 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl40 = getelementptr inbounds %"struct.std::_Vector_base.57"* %45, i32 0, i32 0
  %_M_start41 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl40, i32 0, i32 0
  %46 = load %"class.llvm::Type"*** %_M_start41, align 8
  %47 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl42 = getelementptr inbounds %"struct.std::_Vector_base.57"* %47, i32 0, i32 0
  %_M_end_of_storage43 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl42, i32 0, i32 2
  %48 = load %"class.llvm::Type"*** %_M_end_of_storage43, align 8
  %49 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl44 = getelementptr inbounds %"struct.std::_Vector_base.57"* %49, i32 0, i32 0
  %_M_start45 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl44, i32 0, i32 0
  %50 = load %"class.llvm::Type"*** %_M_start45, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.llvm::Type"** %48 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.llvm::Type"** %50 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  call void @_ZNSt12_Vector_baseIPN4llvm4TypeESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base.57"* %44, %"class.llvm::Type"** %46, i64 %sub.ptr.div)
  %51 = load %"class.llvm::Type"*** %__new_start, align 8
  %52 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl46 = getelementptr inbounds %"struct.std::_Vector_base.57"* %52, i32 0, i32 0
  %_M_start47 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl46, i32 0, i32 0
  store %"class.llvm::Type"** %51, %"class.llvm::Type"*** %_M_start47, align 8
  %53 = load %"class.llvm::Type"*** %__new_finish, align 8
  %54 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl48 = getelementptr inbounds %"struct.std::_Vector_base.57"* %54, i32 0, i32 0
  %_M_finish49 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl48, i32 0, i32 1
  store %"class.llvm::Type"** %53, %"class.llvm::Type"*** %_M_finish49, align 8
  %55 = load %"class.llvm::Type"*** %__new_start, align 8
  %56 = load i64* %__len, align 8
  %add.ptr50 = getelementptr inbounds %"class.llvm::Type"** %55, i64 %56
  %57 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl51 = getelementptr inbounds %"struct.std::_Vector_base.57"* %57, i32 0, i32 0
  %_M_end_of_storage52 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl51, i32 0, i32 2
  store %"class.llvm::Type"** %add.ptr50, %"class.llvm::Type"*** %_M_end_of_storage52, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Type"** @_ZNSt6vectorIPN4llvm4TypeESaIS2_EE3endEv(%"class.std::vector.56"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.82", align 8
  %this.addr = alloca %"class.std::vector.56"*, align 8
  store %"class.std::vector.56"* %this, %"class.std::vector.56"** %this.addr, align 8
  %this1 = load %"class.std::vector.56"** %this.addr
  %0 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.57"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPN4llvm4TypeESt6vectorIS3_SaIS3_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.82"* %retval, %"class.llvm::Type"*** %_M_finish)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.82"* %retval, i32 0, i32 0
  %1 = load %"class.llvm::Type"*** %coerce.dive
  ret %"class.llvm::Type"** %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPPN4llvm4TypeESt6vectorIS3_SaIS3_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.82"* %this, %"class.llvm::Type"*** %__i) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.82"*, align 8
  %__i.addr = alloca %"class.llvm::Type"***, align 8
  store %"class.__gnu_cxx::__normal_iterator.82"* %this, %"class.__gnu_cxx::__normal_iterator.82"** %this.addr, align 8
  store %"class.llvm::Type"*** %__i, %"class.llvm::Type"**** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.82"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.82"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::Type"**** %__i.addr, align 8
  %1 = load %"class.llvm::Type"*** %0, align 8
  store %"class.llvm::Type"** %1, %"class.llvm::Type"*** %_M_current, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Type"** @_ZSt13copy_backwardIPPN4llvm4TypeES3_ET0_T_S5_S4_(%"class.llvm::Type"** %__first, %"class.llvm::Type"** %__last, %"class.llvm::Type"** %__result) #0 {
entry:
  %__first.addr = alloca %"class.llvm::Type"**, align 8
  %__last.addr = alloca %"class.llvm::Type"**, align 8
  %__result.addr = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %__first, %"class.llvm::Type"*** %__first.addr, align 8
  store %"class.llvm::Type"** %__last, %"class.llvm::Type"*** %__last.addr, align 8
  store %"class.llvm::Type"** %__result, %"class.llvm::Type"*** %__result.addr, align 8
  %0 = load %"class.llvm::Type"*** %__first.addr, align 8
  %call = call %"class.llvm::Type"** @_ZSt12__miter_baseIPPN4llvm4TypeEENSt11_Miter_baseIT_E13iterator_typeES5_(%"class.llvm::Type"** %0)
  %1 = load %"class.llvm::Type"*** %__last.addr, align 8
  %call1 = call %"class.llvm::Type"** @_ZSt12__miter_baseIPPN4llvm4TypeEENSt11_Miter_baseIT_E13iterator_typeES5_(%"class.llvm::Type"** %1)
  %2 = load %"class.llvm::Type"*** %__result.addr, align 8
  %call2 = call %"class.llvm::Type"** @_ZSt23__copy_move_backward_a2ILb0EPPN4llvm4TypeES3_ET1_T0_S5_S4_(%"class.llvm::Type"** %call, %"class.llvm::Type"** %call1, %"class.llvm::Type"** %2)
  ret %"class.llvm::Type"** %call2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Type"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm4TypeESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.82"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.82"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.82"* %this, %"class.__gnu_cxx::__normal_iterator.82"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.82"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.82"* %this1, i32 0, i32 0
  ret %"class.llvm::Type"*** %_M_current
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Type"** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm4TypeESt6vectorIS3_SaIS3_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.82"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.82"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.82"* %this, %"class.__gnu_cxx::__normal_iterator.82"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.82"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.82"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::Type"*** %_M_current, align 8
  ret %"class.llvm::Type"** %0
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE12_M_check_lenEmPKc(%"class.std::vector.56"* %this, i64 %__n, i8* %__s) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.56"*, align 8
  %__n.addr = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  %__len = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store %"class.std::vector.56"* %this, %"class.std::vector.56"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %this1 = load %"class.std::vector.56"** %this.addr
  %call = call i64 @_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE8max_sizeEv(%"class.std::vector.56"* %this1)
  %call2 = call i64 @_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE4sizeEv(%"class.std::vector.56"* %this1)
  %sub = sub i64 %call, %call2
  %0 = load i64* %__n.addr, align 8
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8** %__s.addr, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %1) #17
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call i64 @_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE4sizeEv(%"class.std::vector.56"* %this1)
  %call4 = call i64 @_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE4sizeEv(%"class.std::vector.56"* %this1)
  store i64 %call4, i64* %ref.tmp
  %call5 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %ref.tmp, i64* %__n.addr)
  %2 = load i64* %call5
  %add = add i64 %call3, %2
  store i64 %add, i64* %__len, align 8
  %3 = load i64* %__len, align 8
  %call6 = call i64 @_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE4sizeEv(%"class.std::vector.56"* %this1)
  %cmp7 = icmp ult i64 %3, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64* %__len, align 8
  %call8 = call i64 @_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE8max_sizeEv(%"class.std::vector.56"* %this1)
  %cmp9 = icmp ugt i64 %4, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call i64 @_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE8max_sizeEv(%"class.std::vector.56"* %this1)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load i64* %__len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %5, %cond.false ]
  ret i64 %cond
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPPN4llvm4TypeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(%"class.__gnu_cxx::__normal_iterator.82"* %__lhs, %"class.__gnu_cxx::__normal_iterator.82"* %__rhs) #8 {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.82"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.82"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.82"* %__lhs, %"class.__gnu_cxx::__normal_iterator.82"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator.82"* %__rhs, %"class.__gnu_cxx::__normal_iterator.82"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator.82"** %__lhs.addr, align 8
  %call = call %"class.llvm::Type"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm4TypeESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.82"* %0)
  %1 = load %"class.llvm::Type"*** %call
  %2 = load %"class.__gnu_cxx::__normal_iterator.82"** %__rhs.addr, align 8
  %call1 = call %"class.llvm::Type"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPN4llvm4TypeESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.82"* %2)
  %3 = load %"class.llvm::Type"*** %call1
  %sub.ptr.lhs.cast = ptrtoint %"class.llvm::Type"** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.llvm::Type"** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Type"** @_ZNSt6vectorIPN4llvm4TypeESaIS2_EE5beginEv(%"class.std::vector.56"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.82", align 8
  %this.addr = alloca %"class.std::vector.56"*, align 8
  store %"class.std::vector.56"* %this, %"class.std::vector.56"** %this.addr, align 8
  %this1 = load %"class.std::vector.56"** %this.addr
  %0 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.57"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPN4llvm4TypeESt6vectorIS3_SaIS3_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.82"* %retval, %"class.llvm::Type"*** %_M_start)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.82"* %retval, i32 0, i32 0
  %1 = load %"class.llvm::Type"*** %coerce.dive
  ret %"class.llvm::Type"** %1
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Type"** @_ZNSt12_Vector_baseIPN4llvm4TypeESaIS2_EE11_M_allocateEm(%"struct.std::_Vector_base.57"* %this, i64 %__n) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.57"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base.57"* %this, %"struct.std::_Vector_base.57"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base.57"** %this.addr
  %0 = load i64* %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.57"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl to %"class.std::allocator.58"*
  %2 = load i64* %__n.addr, align 8
  %call = call %"class.llvm::Type"** @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm4TypeEEE8allocateERS4_m(%"class.std::allocator.58"* %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"class.llvm::Type"** [ %call, %cond.true ], [ null, %cond.false ]
  ret %"class.llvm::Type"** %cond
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Type"** @_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm4TypeES3_SaIS2_EET0_T_S6_S5_RT1_(%"class.llvm::Type"** %__first, %"class.llvm::Type"** %__last, %"class.llvm::Type"** %__result, %"class.std::allocator.58"* %__alloc) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Type"**, align 8
  %__last.addr = alloca %"class.llvm::Type"**, align 8
  %__result.addr = alloca %"class.llvm::Type"**, align 8
  %__alloc.addr = alloca %"class.std::allocator.58"*, align 8
  store %"class.llvm::Type"** %__first, %"class.llvm::Type"*** %__first.addr, align 8
  store %"class.llvm::Type"** %__last, %"class.llvm::Type"*** %__last.addr, align 8
  store %"class.llvm::Type"** %__result, %"class.llvm::Type"*** %__result.addr, align 8
  store %"class.std::allocator.58"* %__alloc, %"class.std::allocator.58"** %__alloc.addr, align 8
  %0 = load %"class.llvm::Type"*** %__first.addr, align 8
  %1 = load %"class.llvm::Type"*** %__last.addr, align 8
  %2 = load %"class.llvm::Type"*** %__result.addr, align 8
  %3 = load %"class.std::allocator.58"** %__alloc.addr, align 8
  %call = call %"class.llvm::Type"** @_ZSt22__uninitialized_copy_aIPPN4llvm4TypeES3_S2_ET0_T_S5_S4_RSaIT1_E(%"class.llvm::Type"** %0, %"class.llvm::Type"** %1, %"class.llvm::Type"** %2, %"class.std::allocator.58"* %3)
  ret %"class.llvm::Type"** %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.58"* @_ZNSt12_Vector_baseIPN4llvm4TypeESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.57"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.57"*, align 8
  store %"struct.std::_Vector_base.57"* %this, %"struct.std::_Vector_base.57"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.57"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.57"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl to %"class.std::allocator.58"*
  ret %"class.std::allocator.58"* %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPPN4llvm4TypeES2_EvT_S4_RSaIT0_E(%"class.llvm::Type"** %__first, %"class.llvm::Type"** %__last, %"class.std::allocator.58"*) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Type"**, align 8
  %__last.addr = alloca %"class.llvm::Type"**, align 8
  %.addr = alloca %"class.std::allocator.58"*, align 8
  store %"class.llvm::Type"** %__first, %"class.llvm::Type"*** %__first.addr, align 8
  store %"class.llvm::Type"** %__last, %"class.llvm::Type"*** %__last.addr, align 8
  store %"class.std::allocator.58"* %0, %"class.std::allocator.58"** %.addr, align 8
  %1 = load %"class.llvm::Type"*** %__first.addr, align 8
  %2 = load %"class.llvm::Type"*** %__last.addr, align 8
  call void @_ZSt8_DestroyIPPN4llvm4TypeEEvT_S4_(%"class.llvm::Type"** %1, %"class.llvm::Type"** %2)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN4llvm4TypeESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base.57"* %this, %"class.llvm::Type"** %__p, i64 %__n) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.57"*, align 8
  %__p.addr = alloca %"class.llvm::Type"**, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base.57"* %this, %"struct.std::_Vector_base.57"** %this.addr, align 8
  store %"class.llvm::Type"** %__p, %"class.llvm::Type"*** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base.57"** %this.addr
  %0 = load %"class.llvm::Type"*** %__p.addr, align 8
  %tobool = icmp ne %"class.llvm::Type"** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.57"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl to %"class.std::allocator.58"*
  %2 = load %"class.llvm::Type"*** %__p.addr, align 8
  %3 = load i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm4TypeEEE10deallocateERS4_PS3_m(%"class.std::allocator.58"* %1, %"class.llvm::Type"** %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm4TypeEEE10deallocateERS4_PS3_m(%"class.std::allocator.58"* %__a, %"class.llvm::Type"** %__p, i64 %__n) #0 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.58"*, align 8
  %__p.addr = alloca %"class.llvm::Type"**, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.58"* %__a, %"class.std::allocator.58"** %__a.addr, align 8
  store %"class.llvm::Type"** %__p, %"class.llvm::Type"*** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.58"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.58"* %0 to %"class.__gnu_cxx::new_allocator.59"*
  %2 = load %"class.llvm::Type"*** %__p.addr, align 8
  %3 = load i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPN4llvm4TypeEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator.59"* %1, %"class.llvm::Type"** %2, i64 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPN4llvm4TypeEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator.59"* %this, %"class.llvm::Type"** %__p, i64) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.59"*, align 8
  %__p.addr = alloca %"class.llvm::Type"**, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.59"* %this, %"class.__gnu_cxx::new_allocator.59"** %this.addr, align 8
  store %"class.llvm::Type"** %__p, %"class.llvm::Type"*** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.59"** %this.addr
  %1 = load %"class.llvm::Type"*** %__p.addr, align 8
  %2 = bitcast %"class.llvm::Type"** %1 to i8*
  call void @_ZdlPv(i8* %2) #7
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPPN4llvm4TypeEEvT_S4_(%"class.llvm::Type"** %__first, %"class.llvm::Type"** %__last) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Type"**, align 8
  %__last.addr = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %__first, %"class.llvm::Type"*** %__first.addr, align 8
  store %"class.llvm::Type"** %__last, %"class.llvm::Type"*** %__last.addr, align 8
  %0 = load %"class.llvm::Type"*** %__first.addr, align 8
  %1 = load %"class.llvm::Type"*** %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPN4llvm4TypeEEEvT_S6_(%"class.llvm::Type"** %0, %"class.llvm::Type"** %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPN4llvm4TypeEEEvT_S6_(%"class.llvm::Type"**, %"class.llvm::Type"**) #5 align 2 {
entry:
  %.addr = alloca %"class.llvm::Type"**, align 8
  %.addr1 = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %.addr, align 8
  store %"class.llvm::Type"** %1, %"class.llvm::Type"*** %.addr1, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Type"** @_ZSt22__uninitialized_copy_aIPPN4llvm4TypeES3_S2_ET0_T_S5_S4_RSaIT1_E(%"class.llvm::Type"** %__first, %"class.llvm::Type"** %__last, %"class.llvm::Type"** %__result, %"class.std::allocator.58"*) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Type"**, align 8
  %__last.addr = alloca %"class.llvm::Type"**, align 8
  %__result.addr = alloca %"class.llvm::Type"**, align 8
  %.addr = alloca %"class.std::allocator.58"*, align 8
  store %"class.llvm::Type"** %__first, %"class.llvm::Type"*** %__first.addr, align 8
  store %"class.llvm::Type"** %__last, %"class.llvm::Type"*** %__last.addr, align 8
  store %"class.llvm::Type"** %__result, %"class.llvm::Type"*** %__result.addr, align 8
  store %"class.std::allocator.58"* %0, %"class.std::allocator.58"** %.addr, align 8
  %1 = load %"class.llvm::Type"*** %__first.addr, align 8
  %2 = load %"class.llvm::Type"*** %__last.addr, align 8
  %3 = load %"class.llvm::Type"*** %__result.addr, align 8
  %call = call %"class.llvm::Type"** @_ZSt18uninitialized_copyIPPN4llvm4TypeES3_ET0_T_S5_S4_(%"class.llvm::Type"** %1, %"class.llvm::Type"** %2, %"class.llvm::Type"** %3)
  ret %"class.llvm::Type"** %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Type"** @_ZSt18uninitialized_copyIPPN4llvm4TypeES3_ET0_T_S5_S4_(%"class.llvm::Type"** %__first, %"class.llvm::Type"** %__last, %"class.llvm::Type"** %__result) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Type"**, align 8
  %__last.addr = alloca %"class.llvm::Type"**, align 8
  %__result.addr = alloca %"class.llvm::Type"**, align 8
  %__assignable = alloca i8, align 1
  store %"class.llvm::Type"** %__first, %"class.llvm::Type"*** %__first.addr, align 8
  store %"class.llvm::Type"** %__last, %"class.llvm::Type"*** %__last.addr, align 8
  store %"class.llvm::Type"** %__result, %"class.llvm::Type"*** %__result.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = load %"class.llvm::Type"*** %__first.addr, align 8
  %1 = load %"class.llvm::Type"*** %__last.addr, align 8
  %2 = load %"class.llvm::Type"*** %__result.addr, align 8
  %call = call %"class.llvm::Type"** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPPN4llvm4TypeES5_EET0_T_S7_S6_(%"class.llvm::Type"** %0, %"class.llvm::Type"** %1, %"class.llvm::Type"** %2)
  ret %"class.llvm::Type"** %call
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Type"** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPPN4llvm4TypeES5_EET0_T_S7_S6_(%"class.llvm::Type"** %__first, %"class.llvm::Type"** %__last, %"class.llvm::Type"** %__result) #0 align 2 {
entry:
  %__first.addr = alloca %"class.llvm::Type"**, align 8
  %__last.addr = alloca %"class.llvm::Type"**, align 8
  %__result.addr = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %__first, %"class.llvm::Type"*** %__first.addr, align 8
  store %"class.llvm::Type"** %__last, %"class.llvm::Type"*** %__last.addr, align 8
  store %"class.llvm::Type"** %__result, %"class.llvm::Type"*** %__result.addr, align 8
  %0 = load %"class.llvm::Type"*** %__first.addr, align 8
  %1 = load %"class.llvm::Type"*** %__last.addr, align 8
  %2 = load %"class.llvm::Type"*** %__result.addr, align 8
  %call = call %"class.llvm::Type"** @_ZSt4copyIPPN4llvm4TypeES3_ET0_T_S5_S4_(%"class.llvm::Type"** %0, %"class.llvm::Type"** %1, %"class.llvm::Type"** %2)
  ret %"class.llvm::Type"** %call
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Type"** @_ZSt4copyIPPN4llvm4TypeES3_ET0_T_S5_S4_(%"class.llvm::Type"** %__first, %"class.llvm::Type"** %__last, %"class.llvm::Type"** %__result) #0 {
entry:
  %__first.addr = alloca %"class.llvm::Type"**, align 8
  %__last.addr = alloca %"class.llvm::Type"**, align 8
  %__result.addr = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %__first, %"class.llvm::Type"*** %__first.addr, align 8
  store %"class.llvm::Type"** %__last, %"class.llvm::Type"*** %__last.addr, align 8
  store %"class.llvm::Type"** %__result, %"class.llvm::Type"*** %__result.addr, align 8
  %0 = load %"class.llvm::Type"*** %__first.addr, align 8
  %call = call %"class.llvm::Type"** @_ZSt12__miter_baseIPPN4llvm4TypeEENSt11_Miter_baseIT_E13iterator_typeES5_(%"class.llvm::Type"** %0)
  %1 = load %"class.llvm::Type"*** %__last.addr, align 8
  %call1 = call %"class.llvm::Type"** @_ZSt12__miter_baseIPPN4llvm4TypeEENSt11_Miter_baseIT_E13iterator_typeES5_(%"class.llvm::Type"** %1)
  %2 = load %"class.llvm::Type"*** %__result.addr, align 8
  %call2 = call %"class.llvm::Type"** @_ZSt14__copy_move_a2ILb0EPPN4llvm4TypeES3_ET1_T0_S5_S4_(%"class.llvm::Type"** %call, %"class.llvm::Type"** %call1, %"class.llvm::Type"** %2)
  ret %"class.llvm::Type"** %call2
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Type"** @_ZSt14__copy_move_a2ILb0EPPN4llvm4TypeES3_ET1_T0_S5_S4_(%"class.llvm::Type"** %__first, %"class.llvm::Type"** %__last, %"class.llvm::Type"** %__result) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Type"**, align 8
  %__last.addr = alloca %"class.llvm::Type"**, align 8
  %__result.addr = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %__first, %"class.llvm::Type"*** %__first.addr, align 8
  store %"class.llvm::Type"** %__last, %"class.llvm::Type"*** %__last.addr, align 8
  store %"class.llvm::Type"** %__result, %"class.llvm::Type"*** %__result.addr, align 8
  %0 = load %"class.llvm::Type"*** %__first.addr, align 8
  %call = call %"class.llvm::Type"** @_ZSt12__niter_baseIPPN4llvm4TypeEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.llvm::Type"** %0)
  %1 = load %"class.llvm::Type"*** %__last.addr, align 8
  %call1 = call %"class.llvm::Type"** @_ZSt12__niter_baseIPPN4llvm4TypeEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.llvm::Type"** %1)
  %2 = load %"class.llvm::Type"*** %__result.addr, align 8
  %call2 = call %"class.llvm::Type"** @_ZSt12__niter_baseIPPN4llvm4TypeEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.llvm::Type"** %2)
  %call3 = call %"class.llvm::Type"** @_ZSt13__copy_move_aILb0EPPN4llvm4TypeES3_ET1_T0_S5_S4_(%"class.llvm::Type"** %call, %"class.llvm::Type"** %call1, %"class.llvm::Type"** %call2)
  ret %"class.llvm::Type"** %call3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Type"** @_ZSt12__miter_baseIPPN4llvm4TypeEENSt11_Miter_baseIT_E13iterator_typeES5_(%"class.llvm::Type"** %__it) #8 {
entry:
  %__it.addr = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %__it, %"class.llvm::Type"*** %__it.addr, align 8
  %0 = load %"class.llvm::Type"*** %__it.addr, align 8
  %call = call %"class.llvm::Type"** @_ZNSt10_Iter_baseIPPN4llvm4TypeELb0EE7_S_baseES3_(%"class.llvm::Type"** %0)
  ret %"class.llvm::Type"** %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Type"** @_ZNSt10_Iter_baseIPPN4llvm4TypeELb0EE7_S_baseES3_(%"class.llvm::Type"** %__it) #5 align 2 {
entry:
  %__it.addr = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %__it, %"class.llvm::Type"*** %__it.addr, align 8
  %0 = load %"class.llvm::Type"*** %__it.addr, align 8
  ret %"class.llvm::Type"** %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Type"** @_ZSt13__copy_move_aILb0EPPN4llvm4TypeES3_ET1_T0_S5_S4_(%"class.llvm::Type"** %__first, %"class.llvm::Type"** %__last, %"class.llvm::Type"** %__result) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Type"**, align 8
  %__last.addr = alloca %"class.llvm::Type"**, align 8
  %__result.addr = alloca %"class.llvm::Type"**, align 8
  %__simple = alloca i8, align 1
  store %"class.llvm::Type"** %__first, %"class.llvm::Type"*** %__first.addr, align 8
  store %"class.llvm::Type"** %__last, %"class.llvm::Type"*** %__last.addr, align 8
  store %"class.llvm::Type"** %__result, %"class.llvm::Type"*** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load %"class.llvm::Type"*** %__first.addr, align 8
  %1 = load %"class.llvm::Type"*** %__last.addr, align 8
  %2 = load %"class.llvm::Type"*** %__result.addr, align 8
  %call = call %"class.llvm::Type"** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN4llvm4TypeEEEPT_PKS6_S9_S7_(%"class.llvm::Type"** %0, %"class.llvm::Type"** %1, %"class.llvm::Type"** %2)
  ret %"class.llvm::Type"** %call
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"class.llvm::Type"** @_ZSt12__niter_baseIPPN4llvm4TypeEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.llvm::Type"** %__it) #9 {
entry:
  %__it.addr = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %__it, %"class.llvm::Type"*** %__it.addr, align 8
  %0 = load %"class.llvm::Type"*** %__it.addr, align 8
  %call = call %"class.llvm::Type"** @_ZNSt10_Iter_baseIPPN4llvm4TypeELb0EE7_S_baseES3_(%"class.llvm::Type"** %0)
  ret %"class.llvm::Type"** %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Type"** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN4llvm4TypeEEEPT_PKS6_S9_S7_(%"class.llvm::Type"** %__first, %"class.llvm::Type"** %__last, %"class.llvm::Type"** %__result) #5 align 2 {
entry:
  %__first.addr = alloca %"class.llvm::Type"**, align 8
  %__last.addr = alloca %"class.llvm::Type"**, align 8
  %__result.addr = alloca %"class.llvm::Type"**, align 8
  %_Num = alloca i64, align 8
  store %"class.llvm::Type"** %__first, %"class.llvm::Type"*** %__first.addr, align 8
  store %"class.llvm::Type"** %__last, %"class.llvm::Type"*** %__last.addr, align 8
  store %"class.llvm::Type"** %__result, %"class.llvm::Type"*** %__result.addr, align 8
  %0 = load %"class.llvm::Type"*** %__last.addr, align 8
  %1 = load %"class.llvm::Type"*** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.llvm::Type"** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.llvm::Type"** %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %"class.llvm::Type"*** %__result.addr, align 8
  %4 = bitcast %"class.llvm::Type"** %3 to i8*
  %5 = load %"class.llvm::Type"*** %__first.addr, align 8
  %6 = bitcast %"class.llvm::Type"** %5 to i8*
  %7 = load i64* %_Num, align 8
  %mul = mul i64 8, %7
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %4, i8* %6, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %"class.llvm::Type"*** %__result.addr, align 8
  %9 = load i64* %_Num, align 8
  %add.ptr = getelementptr inbounds %"class.llvm::Type"** %8, i64 %9
  ret %"class.llvm::Type"** %add.ptr
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Type"** @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm4TypeEEE8allocateERS4_m(%"class.std::allocator.58"* %__a, i64 %__n) #0 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.58"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.58"* %__a, %"class.std::allocator.58"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.58"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.58"* %0 to %"class.__gnu_cxx::new_allocator.59"*
  %2 = load i64* %__n.addr, align 8
  %call = call %"class.llvm::Type"** @_ZN9__gnu_cxx13new_allocatorIPN4llvm4TypeEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.59"* %1, i64 %2, i8* null)
  ret %"class.llvm::Type"** %call
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Type"** @_ZN9__gnu_cxx13new_allocatorIPN4llvm4TypeEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.59"* %this, i64 %__n, i8*) #0 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.59"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.59"* %this, %"class.__gnu_cxx::new_allocator.59"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.59"** %this.addr
  %1 = load i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIPN4llvm4TypeEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.59"* %this1) #7
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #17
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64* %__n.addr, align 8
  %mul = mul i64 %2, 8
  %call2 = call noalias i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %"class.llvm::Type"**
  ret %"class.llvm::Type"** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIPN4llvm4TypeEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.59"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.59"*, align 8
  store %"class.__gnu_cxx::new_allocator.59"* %this, %"class.__gnu_cxx::new_allocator.59"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.59"** %this.addr
  ret i64 2305843009213693951
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE8max_sizeEv(%"class.std::vector.56"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.56"*, align 8
  store %"class.std::vector.56"* %this, %"class.std::vector.56"** %this.addr, align 8
  %this1 = load %"class.std::vector.56"** %this.addr
  %0 = bitcast %"class.std::vector.56"* %this1 to %"struct.std::_Vector_base.57"*
  %call = call %"class.std::allocator.58"* @_ZNKSt12_Vector_baseIPN4llvm4TypeESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.57"* %0)
  %call2 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm4TypeEEE8max_sizeERKS4_(%"class.std::allocator.58"* %call)
  ret i64 %call2
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaIPN4llvm4TypeEEE8max_sizeERKS4_(%"class.std::allocator.58"* %__a) #5 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.58"*, align 8
  store %"class.std::allocator.58"* %__a, %"class.std::allocator.58"** %__a.addr, align 8
  %0 = load %"class.std::allocator.58"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.58"* %0 to %"class.__gnu_cxx::new_allocator.59"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIPN4llvm4TypeEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.59"* %1) #7
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.58"* @_ZNKSt12_Vector_baseIPN4llvm4TypeESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.57"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.57"*, align 8
  store %"struct.std::_Vector_base.57"* %this, %"struct.std::_Vector_base.57"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.57"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.57"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl to %"class.std::allocator.58"*
  ret %"class.std::allocator.58"* %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Type"** @_ZSt23__copy_move_backward_a2ILb0EPPN4llvm4TypeES3_ET1_T0_S5_S4_(%"class.llvm::Type"** %__first, %"class.llvm::Type"** %__last, %"class.llvm::Type"** %__result) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Type"**, align 8
  %__last.addr = alloca %"class.llvm::Type"**, align 8
  %__result.addr = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %__first, %"class.llvm::Type"*** %__first.addr, align 8
  store %"class.llvm::Type"** %__last, %"class.llvm::Type"*** %__last.addr, align 8
  store %"class.llvm::Type"** %__result, %"class.llvm::Type"*** %__result.addr, align 8
  %0 = load %"class.llvm::Type"*** %__first.addr, align 8
  %call = call %"class.llvm::Type"** @_ZSt12__niter_baseIPPN4llvm4TypeEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.llvm::Type"** %0)
  %1 = load %"class.llvm::Type"*** %__last.addr, align 8
  %call1 = call %"class.llvm::Type"** @_ZSt12__niter_baseIPPN4llvm4TypeEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.llvm::Type"** %1)
  %2 = load %"class.llvm::Type"*** %__result.addr, align 8
  %call2 = call %"class.llvm::Type"** @_ZSt12__niter_baseIPPN4llvm4TypeEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.llvm::Type"** %2)
  %call3 = call %"class.llvm::Type"** @_ZSt22__copy_move_backward_aILb0EPPN4llvm4TypeES3_ET1_T0_S5_S4_(%"class.llvm::Type"** %call, %"class.llvm::Type"** %call1, %"class.llvm::Type"** %call2)
  ret %"class.llvm::Type"** %call3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Type"** @_ZSt22__copy_move_backward_aILb0EPPN4llvm4TypeES3_ET1_T0_S5_S4_(%"class.llvm::Type"** %__first, %"class.llvm::Type"** %__last, %"class.llvm::Type"** %__result) #8 {
entry:
  %__first.addr = alloca %"class.llvm::Type"**, align 8
  %__last.addr = alloca %"class.llvm::Type"**, align 8
  %__result.addr = alloca %"class.llvm::Type"**, align 8
  %__simple = alloca i8, align 1
  store %"class.llvm::Type"** %__first, %"class.llvm::Type"*** %__first.addr, align 8
  store %"class.llvm::Type"** %__last, %"class.llvm::Type"*** %__last.addr, align 8
  store %"class.llvm::Type"** %__result, %"class.llvm::Type"*** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load %"class.llvm::Type"*** %__first.addr, align 8
  %1 = load %"class.llvm::Type"*** %__last.addr, align 8
  %2 = load %"class.llvm::Type"*** %__result.addr, align 8
  %call = call %"class.llvm::Type"** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN4llvm4TypeEEEPT_PKS6_S9_S7_(%"class.llvm::Type"** %0, %"class.llvm::Type"** %1, %"class.llvm::Type"** %2)
  ret %"class.llvm::Type"** %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Type"** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN4llvm4TypeEEEPT_PKS6_S9_S7_(%"class.llvm::Type"** %__first, %"class.llvm::Type"** %__last, %"class.llvm::Type"** %__result) #5 align 2 {
entry:
  %__first.addr = alloca %"class.llvm::Type"**, align 8
  %__last.addr = alloca %"class.llvm::Type"**, align 8
  %__result.addr = alloca %"class.llvm::Type"**, align 8
  %_Num = alloca i64, align 8
  store %"class.llvm::Type"** %__first, %"class.llvm::Type"*** %__first.addr, align 8
  store %"class.llvm::Type"** %__last, %"class.llvm::Type"*** %__last.addr, align 8
  store %"class.llvm::Type"** %__result, %"class.llvm::Type"*** %__result.addr, align 8
  %0 = load %"class.llvm::Type"*** %__last.addr, align 8
  %1 = load %"class.llvm::Type"*** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.llvm::Type"** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.llvm::Type"** %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %"class.llvm::Type"*** %__result.addr, align 8
  %4 = load i64* %_Num, align 8
  %idx.neg = sub i64 0, %4
  %add.ptr = getelementptr inbounds %"class.llvm::Type"** %3, i64 %idx.neg
  %5 = bitcast %"class.llvm::Type"** %add.ptr to i8*
  %6 = load %"class.llvm::Type"*** %__first.addr, align 8
  %7 = bitcast %"class.llvm::Type"** %6 to i8*
  %8 = load i64* %_Num, align 8
  %mul = mul i64 8, %8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %5, i8* %7, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %"class.llvm::Type"*** %__result.addr, align 8
  %10 = load i64* %_Num, align 8
  %idx.neg1 = sub i64 0, %10
  %add.ptr2 = getelementptr inbounds %"class.llvm::Type"** %9, i64 %idx.neg1
  ret %"class.llvm::Type"** %add.ptr2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPN4llvm4TypeEE9constructEPS3_RKS3_(%"class.__gnu_cxx::new_allocator.59"* %this, %"class.llvm::Type"** %__p, %"class.llvm::Type"** %__val) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.59"*, align 8
  %__p.addr = alloca %"class.llvm::Type"**, align 8
  %__val.addr = alloca %"class.llvm::Type"**, align 8
  store %"class.__gnu_cxx::new_allocator.59"* %this, %"class.__gnu_cxx::new_allocator.59"** %this.addr, align 8
  store %"class.llvm::Type"** %__p, %"class.llvm::Type"*** %__p.addr, align 8
  store %"class.llvm::Type"** %__val, %"class.llvm::Type"*** %__val.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.59"** %this.addr
  %0 = load %"class.llvm::Type"*** %__p.addr, align 8
  %1 = bitcast %"class.llvm::Type"** %0 to i8*
  %new.isnull = icmp eq i8* %1, null
  br i1 %new.isnull, label %new.cont, label %new.notnull

new.notnull:                                      ; preds = %entry
  %2 = bitcast i8* %1 to %"class.llvm::Type"**
  %3 = load %"class.llvm::Type"*** %__val.addr, align 8
  %4 = load %"class.llvm::Type"** %3, align 8
  store %"class.llvm::Type"* %4, %"class.llvm::Type"** %2, align 8
  br label %new.cont

new.cont:                                         ; preds = %new.notnull, %entry
  %5 = phi %"class.llvm::Type"** [ %2, %new.notnull ], [ null, %entry ]
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN4llvm4TypeESaIS2_EED2Ev(%"struct.std::_Vector_base.57"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.57"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base.57"* %this, %"struct.std::_Vector_base.57"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.57"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.57"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load %"class.llvm::Type"*** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.57"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load %"class.llvm::Type"*** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.57"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load %"class.llvm::Type"*** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.llvm::Type"** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.llvm::Type"** %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  invoke void @_ZNSt12_Vector_baseIPN4llvm4TypeESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base.57"* %this1, %"class.llvm::Type"** %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.57"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIPN4llvm4TypeESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl5) #7
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.57"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIPN4llvm4TypeESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl6) #7
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN4llvm4TypeESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %this) unnamed_addr #9 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"** %this.addr
  %0 = bitcast %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %this1 to %"class.std::allocator.58"*
  call void @_ZNSaIPN4llvm4TypeEED2Ev(%"class.std::allocator.58"* %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPN4llvm4TypeEED2Ev(%"class.std::allocator.58"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.58"*, align 8
  store %"class.std::allocator.58"* %this, %"class.std::allocator.58"** %this.addr, align 8
  %this1 = load %"class.std::allocator.58"** %this.addr
  %0 = bitcast %"class.std::allocator.58"* %this1 to %"class.__gnu_cxx::new_allocator.59"*
  call void @_ZN9__gnu_cxx13new_allocatorIPN4llvm4TypeEED2Ev(%"class.__gnu_cxx::new_allocator.59"* %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPN4llvm4TypeEED2Ev(%"class.__gnu_cxx::new_allocator.59"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.59"*, align 8
  store %"class.__gnu_cxx::new_allocator.59"* %this, %"class.__gnu_cxx::new_allocator.59"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.59"** %this.addr
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN4llvm4TypeESaIS2_EEC2Ev(%"struct.std::_Vector_base.57"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.57"*, align 8
  store %"struct.std::_Vector_base.57"* %this, %"struct.std::_Vector_base.57"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.57"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.57"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIPN4llvm4TypeESaIS2_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %_M_impl)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN4llvm4TypeESaIS2_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"** %this.addr
  %0 = bitcast %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %this1 to %"class.std::allocator.58"*
  call void @_ZNSaIPN4llvm4TypeEEC2Ev(%"class.std::allocator.58"* %0) #7
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %this1, i32 0, i32 0
  store %"class.llvm::Type"** null, %"class.llvm::Type"*** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %this1, i32 0, i32 1
  store %"class.llvm::Type"** null, %"class.llvm::Type"*** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<llvm::Type *, std::allocator<llvm::Type *> >::_Vector_impl"* %this1, i32 0, i32 2
  store %"class.llvm::Type"** null, %"class.llvm::Type"*** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPN4llvm4TypeEEC2Ev(%"class.std::allocator.58"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.58"*, align 8
  store %"class.std::allocator.58"* %this, %"class.std::allocator.58"** %this.addr, align 8
  %this1 = load %"class.std::allocator.58"** %this.addr
  %0 = bitcast %"class.std::allocator.58"* %this1 to %"class.__gnu_cxx::new_allocator.59"*
  call void @_ZN9__gnu_cxx13new_allocatorIPN4llvm4TypeEEC2Ev(%"class.__gnu_cxx::new_allocator.59"* %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPN4llvm4TypeEEC2Ev(%"class.__gnu_cxx::new_allocator.59"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.59"*, align 8
  store %"class.__gnu_cxx::new_allocator.59"* %this, %"class.__gnu_cxx::new_allocator.59"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.59"** %this.addr
  ret void
}

declare i8* @_ZN4llvm4UsernwEmj(i64, i32) #1

declare void @_ZN4llvm10ReturnInstC1ERNS_11LLVMContextEPNS_5ValueEPNS_10BasicBlockE(%"class.llvm::ReturnInst"*, %"class.llvm::LLVMContext"*, %"class.llvm::Value"*, %"class.llvm::BasicBlock"*) #1

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm4UserdlEPvj(i8*, i32) #0 align 2 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i32, align 4
  store i8* %0, i8** %.addr, align 8
  store i32 %1, i32* %.addr1, align 4
  call void @_ZN4llvm25llvm_unreachable_internalEPKcS1_j(i8* getelementptr inbounds ([20 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8]* @.str29, i32 0, i32 0), i32 69) #17
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn
declare void @_ZN4llvm25llvm_unreachable_internalEPKcS1_j(i8*, i8*, i32) #10

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #11

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Type"* @_ZNK4llvm5Value7getTypeEv(%"class.llvm::Value"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"* %this, %"class.llvm::Value"** %this.addr, align 8
  %this1 = load %"class.llvm::Value"** %this.addr
  %VTy = getelementptr inbounds %"class.llvm::Value"* %this1, i32 0, i32 4
  %0 = load %"class.llvm::Type"** %VTy, align 8
  ret %"class.llvm::Type"* %0
}

declare void @_ZN4llvm7PHINode12growOperandsEv(%"class.llvm::PHINode"*) #1

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm7PHINode16setIncomingValueEjPNS_5ValueE(%"class.llvm::PHINode"* %this, i32 %i, %"class.llvm::Value"* %V) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::PHINode"*, align 8
  %i.addr = alloca i32, align 4
  %V.addr = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::PHINode"* %this, %"class.llvm::PHINode"** %this.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store %"class.llvm::Value"* %V, %"class.llvm::Value"** %V.addr, align 8
  %this1 = load %"class.llvm::PHINode"** %this.addr
  %0 = load i32* %i.addr, align 4
  %1 = load %"class.llvm::Value"** %V.addr, align 8
  call void @_ZN4llvm7PHINode10setOperandEjPNS_5ValueE(%"class.llvm::PHINode"* %this1, i32 %0, %"class.llvm::Value"* %1)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm7PHINode16setIncomingBlockEjPNS_10BasicBlockE(%"class.llvm::PHINode"* %this, i32 %i, %"class.llvm::BasicBlock"* %BB) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::PHINode"*, align 8
  %i.addr = alloca i32, align 4
  %BB.addr = alloca %"class.llvm::BasicBlock"*, align 8
  store %"class.llvm::PHINode"* %this, %"class.llvm::PHINode"** %this.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store %"class.llvm::BasicBlock"* %BB, %"class.llvm::BasicBlock"** %BB.addr, align 8
  %this1 = load %"class.llvm::PHINode"** %this.addr
  %0 = load %"class.llvm::BasicBlock"** %BB.addr, align 8
  %1 = load i32* %i.addr, align 4
  %idxprom = zext i32 %1 to i64
  %call = call %"class.llvm::BasicBlock"** @_ZN4llvm7PHINode11block_beginEv(%"class.llvm::PHINode"* %this1)
  %arrayidx = getelementptr inbounds %"class.llvm::BasicBlock"** %call, i64 %idxprom
  store %"class.llvm::BasicBlock"* %0, %"class.llvm::BasicBlock"** %arrayidx, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::BasicBlock"** @_ZN4llvm7PHINode11block_beginEv(%"class.llvm::PHINode"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::PHINode"*, align 8
  %ref = alloca %"class.llvm::PointerIntPair.83"*, align 8
  store %"class.llvm::PHINode"* %this, %"class.llvm::PHINode"** %this.addr, align 8
  %this1 = load %"class.llvm::PHINode"** %this.addr
  %call = call %"class.llvm::Use"* @_ZN4llvm7PHINode8op_beginEv(%"class.llvm::PHINode"* %this1)
  %ReservedSpace = getelementptr inbounds %"class.llvm::PHINode"* %this1, i32 0, i32 1
  %0 = load i32* %ReservedSpace, align 4
  %idx.ext = zext i32 %0 to i64
  %add.ptr = getelementptr inbounds %"class.llvm::Use"* %call, i64 %idx.ext
  %1 = bitcast %"class.llvm::Use"* %add.ptr to %"class.llvm::PointerIntPair.83"*
  store %"class.llvm::PointerIntPair.83"* %1, %"class.llvm::PointerIntPair.83"** %ref, align 8
  %2 = load %"class.llvm::PointerIntPair.83"** %ref, align 8
  %add.ptr2 = getelementptr inbounds %"class.llvm::PointerIntPair.83"* %2, i64 1
  %3 = bitcast %"class.llvm::PointerIntPair.83"* %add.ptr2 to %"class.llvm::BasicBlock"**
  ret %"class.llvm::BasicBlock"** %3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Use"* @_ZN4llvm7PHINode8op_beginEv(%"class.llvm::PHINode"* %this) #8 align 2 {
entry:
  %this.addr = alloca %"class.llvm::PHINode"*, align 8
  store %"class.llvm::PHINode"* %this, %"class.llvm::PHINode"** %this.addr, align 8
  %this1 = load %"class.llvm::PHINode"** %this.addr
  %0 = bitcast %"class.llvm::PHINode"* %this1 to %"class.llvm::User"*
  %call = call %"class.llvm::Use"* @_ZN4llvm20HungoffOperandTraitsILj2EE8op_beginEPNS_4UserE(%"class.llvm::User"* %0)
  ret %"class.llvm::Use"* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Use"* @_ZN4llvm20HungoffOperandTraitsILj2EE8op_beginEPNS_4UserE(%"class.llvm::User"* %U) #5 align 2 {
entry:
  %U.addr = alloca %"class.llvm::User"*, align 8
  store %"class.llvm::User"* %U, %"class.llvm::User"** %U.addr, align 8
  %0 = load %"class.llvm::User"** %U.addr, align 8
  %OperandList = getelementptr inbounds %"class.llvm::User"* %0, i32 0, i32 1
  %1 = load %"class.llvm::Use"** %OperandList, align 8
  ret %"class.llvm::Use"* %1
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZN4llvm7PHINode10setOperandEjPNS_5ValueE(%"class.llvm::PHINode"* %this, i32 %i_nocapture, %"class.llvm::Value"* %Val_nocapture) #8 align 2 {
entry:
  %this.addr = alloca %"class.llvm::PHINode"*, align 8
  %i_nocapture.addr = alloca i32, align 4
  %Val_nocapture.addr = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::PHINode"* %this, %"class.llvm::PHINode"** %this.addr, align 8
  store i32 %i_nocapture, i32* %i_nocapture.addr, align 4
  store %"class.llvm::Value"* %Val_nocapture, %"class.llvm::Value"** %Val_nocapture.addr, align 8
  %this1 = load %"class.llvm::PHINode"** %this.addr
  %0 = load i32* %i_nocapture.addr, align 4
  %1 = bitcast %"class.llvm::PHINode"* %this1 to %"class.llvm::User"*
  %call = call i32 @_ZN4llvm20HungoffOperandTraitsILj2EE8operandsEPKNS_4UserE(%"class.llvm::User"* %1)
  %cmp = icmp ult i32 %0, %call
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([85 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8]* @.str31, i32 0, i32 0), i32 2164, i8* getelementptr inbounds ([60 x i8]* @__PRETTY_FUNCTION__._ZN4llvm7PHINode10setOperandEjPNS_5ValueE, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load i32* %i_nocapture.addr, align 4
  %idxprom = zext i32 %3 to i64
  %4 = bitcast %"class.llvm::PHINode"* %this1 to %"class.llvm::User"*
  %call2 = call %"class.llvm::Use"* @_ZN4llvm20HungoffOperandTraitsILj2EE8op_beginEPNS_4UserE(%"class.llvm::User"* %4)
  %arrayidx = getelementptr inbounds %"class.llvm::Use"* %call2, i64 %idxprom
  %5 = load %"class.llvm::Value"** %Val_nocapture.addr, align 8
  %call3 = call %"class.llvm::Value"* @_ZN4llvm3UseaSEPNS_5ValueE(%"class.llvm::Use"* %arrayidx, %"class.llvm::Value"* %5)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr i32 @_ZN4llvm20HungoffOperandTraitsILj2EE8operandsEPKNS_4UserE(%"class.llvm::User"* %U) #0 align 2 {
entry:
  %U.addr = alloca %"class.llvm::User"*, align 8
  store %"class.llvm::User"* %U, %"class.llvm::User"** %U.addr, align 8
  %0 = load %"class.llvm::User"** %U.addr, align 8
  %call = call i32 @_ZNK4llvm4User14getNumOperandsEv(%"class.llvm::User"* %0)
  ret i32 %call
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Value"* @_ZN4llvm3UseaSEPNS_5ValueE(%"class.llvm::Use"* %this, %"class.llvm::Value"* %RHS) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Use"*, align 8
  %RHS.addr = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Use"* %this, %"class.llvm::Use"** %this.addr, align 8
  store %"class.llvm::Value"* %RHS, %"class.llvm::Value"** %RHS.addr, align 8
  %this1 = load %"class.llvm::Use"** %this.addr
  %0 = load %"class.llvm::Value"** %RHS.addr, align 8
  call void @_ZN4llvm3Use3setEPNS_5ValueE(%"class.llvm::Use"* %this1, %"class.llvm::Value"* %0)
  %1 = load %"class.llvm::Value"** %RHS.addr, align 8
  ret %"class.llvm::Value"* %1
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZN4llvm3Use3setEPNS_5ValueE(%"class.llvm::Use"* %this, %"class.llvm::Value"* %V) #8 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Use"*, align 8
  %V.addr = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Use"* %this, %"class.llvm::Use"** %this.addr, align 8
  store %"class.llvm::Value"* %V, %"class.llvm::Value"** %V.addr, align 8
  %this1 = load %"class.llvm::Use"** %this.addr
  %Val = getelementptr inbounds %"class.llvm::Use"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::Value"** %Val, align 8
  %tobool = icmp ne %"class.llvm::Value"* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZN4llvm3Use14removeFromListEv(%"class.llvm::Use"* %this1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %"class.llvm::Value"** %V.addr, align 8
  %Val2 = getelementptr inbounds %"class.llvm::Use"* %this1, i32 0, i32 0
  store %"class.llvm::Value"* %1, %"class.llvm::Value"** %Val2, align 8
  %2 = load %"class.llvm::Value"** %V.addr, align 8
  %tobool3 = icmp ne %"class.llvm::Value"* %2, null
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %3 = load %"class.llvm::Value"** %V.addr, align 8
  call void @_ZN4llvm5Value6addUseERNS_3UseE(%"class.llvm::Value"* %3, %"class.llvm::Use"* %this1)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm3Use14removeFromListEv(%"class.llvm::Use"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Use"*, align 8
  %StrippedPrev = alloca %"class.llvm::Use"**, align 8
  store %"class.llvm::Use"* %this, %"class.llvm::Use"** %this.addr, align 8
  %this1 = load %"class.llvm::Use"** %this.addr
  %Prev = getelementptr inbounds %"class.llvm::Use"* %this1, i32 0, i32 2
  %call = call %"class.llvm::Use"** @_ZNK4llvm14PointerIntPairIPPNS_3UseELj2ENS1_10PrevPtrTagENS_21PointerLikeTypeTraitsIS3_EEE10getPointerEv(%"class.llvm::PointerIntPair"* %Prev)
  store %"class.llvm::Use"** %call, %"class.llvm::Use"*** %StrippedPrev, align 8
  %Next = getelementptr inbounds %"class.llvm::Use"* %this1, i32 0, i32 1
  %0 = load %"class.llvm::Use"** %Next, align 8
  %1 = load %"class.llvm::Use"*** %StrippedPrev, align 8
  store %"class.llvm::Use"* %0, %"class.llvm::Use"** %1, align 8
  %Next2 = getelementptr inbounds %"class.llvm::Use"* %this1, i32 0, i32 1
  %2 = load %"class.llvm::Use"** %Next2, align 8
  %tobool = icmp ne %"class.llvm::Use"* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %Next3 = getelementptr inbounds %"class.llvm::Use"* %this1, i32 0, i32 1
  %3 = load %"class.llvm::Use"** %Next3, align 8
  %4 = load %"class.llvm::Use"*** %StrippedPrev, align 8
  call void @_ZN4llvm3Use7setPrevEPPS0_(%"class.llvm::Use"* %3, %"class.llvm::Use"** %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm5Value6addUseERNS_3UseE(%"class.llvm::Value"* %this, %"class.llvm::Use"* %U) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Value"*, align 8
  %U.addr = alloca %"class.llvm::Use"*, align 8
  store %"class.llvm::Value"* %this, %"class.llvm::Value"** %this.addr, align 8
  store %"class.llvm::Use"* %U, %"class.llvm::Use"** %U.addr, align 8
  %this1 = load %"class.llvm::Value"** %this.addr
  %0 = load %"class.llvm::Use"** %U.addr, align 8
  %UseList = getelementptr inbounds %"class.llvm::Value"* %this1, i32 0, i32 5
  call void @_ZN4llvm3Use9addToListEPPS0_(%"class.llvm::Use"* %0, %"class.llvm::Use"** %UseList)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm3Use9addToListEPPS0_(%"class.llvm::Use"* %this, %"class.llvm::Use"** %List) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Use"*, align 8
  %List.addr = alloca %"class.llvm::Use"**, align 8
  store %"class.llvm::Use"* %this, %"class.llvm::Use"** %this.addr, align 8
  store %"class.llvm::Use"** %List, %"class.llvm::Use"*** %List.addr, align 8
  %this1 = load %"class.llvm::Use"** %this.addr
  %0 = load %"class.llvm::Use"*** %List.addr, align 8
  %1 = load %"class.llvm::Use"** %0, align 8
  %Next = getelementptr inbounds %"class.llvm::Use"* %this1, i32 0, i32 1
  store %"class.llvm::Use"* %1, %"class.llvm::Use"** %Next, align 8
  %Next2 = getelementptr inbounds %"class.llvm::Use"* %this1, i32 0, i32 1
  %2 = load %"class.llvm::Use"** %Next2, align 8
  %tobool = icmp ne %"class.llvm::Use"* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %Next3 = getelementptr inbounds %"class.llvm::Use"* %this1, i32 0, i32 1
  %3 = load %"class.llvm::Use"** %Next3, align 8
  %Next4 = getelementptr inbounds %"class.llvm::Use"* %this1, i32 0, i32 1
  call void @_ZN4llvm3Use7setPrevEPPS0_(%"class.llvm::Use"* %3, %"class.llvm::Use"** %Next4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %"class.llvm::Use"*** %List.addr, align 8
  call void @_ZN4llvm3Use7setPrevEPPS0_(%"class.llvm::Use"* %this1, %"class.llvm::Use"** %4)
  %5 = load %"class.llvm::Use"*** %List.addr, align 8
  store %"class.llvm::Use"* %this1, %"class.llvm::Use"** %5, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm3Use7setPrevEPPS0_(%"class.llvm::Use"* %this, %"class.llvm::Use"** %NewPrev) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Use"*, align 8
  %NewPrev.addr = alloca %"class.llvm::Use"**, align 8
  store %"class.llvm::Use"* %this, %"class.llvm::Use"** %this.addr, align 8
  store %"class.llvm::Use"** %NewPrev, %"class.llvm::Use"*** %NewPrev.addr, align 8
  %this1 = load %"class.llvm::Use"** %this.addr
  %Prev = getelementptr inbounds %"class.llvm::Use"* %this1, i32 0, i32 2
  %0 = load %"class.llvm::Use"*** %NewPrev.addr, align 8
  call void @_ZN4llvm14PointerIntPairIPPNS_3UseELj2ENS1_10PrevPtrTagENS_21PointerLikeTypeTraitsIS3_EEE10setPointerES3_(%"class.llvm::PointerIntPair"* %Prev, %"class.llvm::Use"** %0)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm14PointerIntPairIPPNS_3UseELj2ENS1_10PrevPtrTagENS_21PointerLikeTypeTraitsIS3_EEE10setPointerES3_(%"class.llvm::PointerIntPair"* %this, %"class.llvm::Use"** %PtrVal) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::PointerIntPair"*, align 8
  %PtrVal.addr = alloca %"class.llvm::Use"**, align 8
  %PtrWord = alloca i64, align 8
  store %"class.llvm::PointerIntPair"* %this, %"class.llvm::PointerIntPair"** %this.addr, align 8
  store %"class.llvm::Use"** %PtrVal, %"class.llvm::Use"*** %PtrVal.addr, align 8
  %this1 = load %"class.llvm::PointerIntPair"** %this.addr
  %0 = load %"class.llvm::Use"*** %PtrVal.addr, align 8
  %call = call i8* @_ZN4llvm21PointerLikeTypeTraitsIPPNS_3UseEE16getAsVoidPointerES3_(%"class.llvm::Use"** %0)
  %1 = ptrtoint i8* %call to i64
  store i64 %1, i64* %PtrWord, align 8
  %2 = load i64* %PtrWord, align 8
  %and = and i64 %2, 3
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([100 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8]* @.str36, i32 0, i32 0), i32 83, i8* getelementptr inbounds ([261 x i8]* @__PRETTY_FUNCTION__._ZN4llvm14PointerIntPairIPPNS_3UseELj2ENS1_10PrevPtrTagENS_21PointerLikeTypeTraitsIS3_EEE10setPointerES3_, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64* %PtrWord, align 8
  %Value = getelementptr inbounds %"class.llvm::PointerIntPair"* %this1, i32 0, i32 0
  %5 = load i64* %Value, align 8
  %and2 = and i64 %5, 3
  %or = or i64 %4, %and2
  %Value3 = getelementptr inbounds %"class.llvm::PointerIntPair"* %this1, i32 0, i32 0
  store i64 %or, i64* %Value3, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i8* @_ZN4llvm21PointerLikeTypeTraitsIPPNS_3UseEE16getAsVoidPointerES3_(%"class.llvm::Use"** %P) #9 align 2 {
entry:
  %P.addr = alloca %"class.llvm::Use"**, align 8
  store %"class.llvm::Use"** %P, %"class.llvm::Use"*** %P.addr, align 8
  %0 = load %"class.llvm::Use"*** %P.addr, align 8
  %1 = bitcast %"class.llvm::Use"** %0 to i8*
  ret i8* %1
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Use"** @_ZNK4llvm14PointerIntPairIPPNS_3UseELj2ENS1_10PrevPtrTagENS_21PointerLikeTypeTraitsIS3_EEE10getPointerEv(%"class.llvm::PointerIntPair"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::PointerIntPair"*, align 8
  store %"class.llvm::PointerIntPair"* %this, %"class.llvm::PointerIntPair"** %this.addr, align 8
  %this1 = load %"class.llvm::PointerIntPair"** %this.addr
  %Value = getelementptr inbounds %"class.llvm::PointerIntPair"* %this1, i32 0, i32 0
  %0 = load i64* %Value, align 8
  %and = and i64 %0, -4
  %1 = inttoptr i64 %and to i8*
  %call = call %"class.llvm::Use"** @_ZN4llvm21PointerLikeTypeTraitsIPPNS_3UseEE18getFromVoidPointerEPv(i8* %1)
  ret %"class.llvm::Use"** %call
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"class.llvm::Use"** @_ZN4llvm21PointerLikeTypeTraitsIPPNS_3UseEE18getFromVoidPointerEPv(i8* %P) #9 align 2 {
entry:
  %P.addr = alloca i8*, align 8
  store i8* %P, i8** %P.addr, align 8
  %0 = load i8** %P.addr, align 8
  %1 = bitcast i8* %0 to %"class.llvm::Use"**
  ret %"class.llvm::Use"** %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZNK4llvm4User14getNumOperandsEv(%"class.llvm::User"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::User"*, align 8
  store %"class.llvm::User"* %this, %"class.llvm::User"** %this.addr, align 8
  %this1 = load %"class.llvm::User"** %this.addr
  %NumOperands = getelementptr inbounds %"class.llvm::User"* %this1, i32 0, i32 2
  %0 = load i32* %NumOperands, align 4
  ret i32 %0
}

; Function Attrs: uwtable
define linkonce_odr i8* @_ZN4llvm7PHINodenwEm(i64 %s) #0 align 2 {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, i64* %s.addr, align 8
  %0 = load i64* %s.addr, align 8
  %call = call i8* @_ZN4llvm4UsernwEmj(i64 %0, i32 0)
  ret i8* %call
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm7PHINodeC2EPNS_4TypeEjRKNS_5TwineEPNS_10BasicBlockE(%"class.llvm::PHINode"* %this, %"class.llvm::Type"* %Ty, i32 %NumReservedValues, %"class.llvm::Twine"* %NameStr, %"class.llvm::BasicBlock"* %InsertAtEnd) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::PHINode"*, align 8
  %Ty.addr = alloca %"class.llvm::Type"*, align 8
  %NumReservedValues.addr = alloca i32, align 4
  %NameStr.addr = alloca %"class.llvm::Twine"*, align 8
  %InsertAtEnd.addr = alloca %"class.llvm::BasicBlock"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.llvm::PHINode"* %this, %"class.llvm::PHINode"** %this.addr, align 8
  store %"class.llvm::Type"* %Ty, %"class.llvm::Type"** %Ty.addr, align 8
  store i32 %NumReservedValues, i32* %NumReservedValues.addr, align 4
  store %"class.llvm::Twine"* %NameStr, %"class.llvm::Twine"** %NameStr.addr, align 8
  store %"class.llvm::BasicBlock"* %InsertAtEnd, %"class.llvm::BasicBlock"** %InsertAtEnd.addr, align 8
  %this1 = load %"class.llvm::PHINode"** %this.addr
  %0 = bitcast %"class.llvm::PHINode"* %this1 to %"class.llvm::Instruction"*
  %1 = load %"class.llvm::Type"** %Ty.addr, align 8
  %2 = load %"class.llvm::BasicBlock"** %InsertAtEnd.addr, align 8
  call void @_ZN4llvm11InstructionC2EPNS_4TypeEjPNS_3UseEjPNS_10BasicBlockE(%"class.llvm::Instruction"* %0, %"class.llvm::Type"* %1, i32 48, %"class.llvm::Use"* null, i32 0, %"class.llvm::BasicBlock"* %2)
  %3 = bitcast %"class.llvm::PHINode"* %this1 to i8***
  store i8** getelementptr inbounds ([7 x i8*]* @_ZTVN4llvm7PHINodeE, i64 0, i64 2), i8*** %3
  %ReservedSpace = getelementptr inbounds %"class.llvm::PHINode"* %this1, i32 0, i32 1
  %4 = load i32* %NumReservedValues.addr, align 4
  store i32 %4, i32* %ReservedSpace, align 4
  %5 = bitcast %"class.llvm::PHINode"* %this1 to %"class.llvm::Value"*
  %6 = load %"class.llvm::Twine"** %NameStr.addr, align 8
  invoke void @_ZN4llvm5Value7setNameERKNS_5TwineE(%"class.llvm::Value"* %5, %"class.llvm::Twine"* %6)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %ReservedSpace2 = getelementptr inbounds %"class.llvm::PHINode"* %this1, i32 0, i32 1
  %7 = load i32* %ReservedSpace2, align 4
  %call = invoke %"class.llvm::Use"* @_ZNK4llvm7PHINode16allocHungoffUsesEj(%"class.llvm::PHINode"* %this1, i32 %7)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %8 = bitcast %"class.llvm::PHINode"* %this1 to %"class.llvm::User"*
  %OperandList = getelementptr inbounds %"class.llvm::User"* %8, i32 0, i32 1
  store %"class.llvm::Use"* %call, %"class.llvm::Use"** %OperandList, align 8
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %9 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %exn.slot
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %ehselector.slot
  %12 = bitcast %"class.llvm::PHINode"* %this1 to %"class.llvm::Instruction"*
  invoke void @_ZN4llvm11InstructionD2Ev(%"class.llvm::Instruction"* %12)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont4
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad
  %13 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  call void @__clang_call_terminate(i8* %14) #13
  unreachable
}

declare void @_ZN4llvm11InstructionC2EPNS_4TypeEjPNS_3UseEjPNS_10BasicBlockE(%"class.llvm::Instruction"*, %"class.llvm::Type"*, i32, %"class.llvm::Use"*, i32, %"class.llvm::BasicBlock"*) #1

declare %"class.llvm::Use"* @_ZNK4llvm7PHINode16allocHungoffUsesEj(%"class.llvm::PHINode"*, i32) #1

declare void @_ZN4llvm11InstructionD2Ev(%"class.llvm::Instruction"*) #1

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm8CallInst26setInstructionSubclassDataEt(%"class.llvm::CallInst"* %this, i16 zeroext %D) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::CallInst"*, align 8
  %D.addr = alloca i16, align 2
  store %"class.llvm::CallInst"* %this, %"class.llvm::CallInst"** %this.addr, align 8
  store i16 %D, i16* %D.addr, align 2
  %this1 = load %"class.llvm::CallInst"** %this.addr
  %0 = bitcast %"class.llvm::CallInst"* %this1 to %"class.llvm::Instruction"*
  %1 = load i16* %D.addr, align 2
  call void @_ZN4llvm11Instruction26setInstructionSubclassDataEt(%"class.llvm::Instruction"* %0, i16 zeroext %1)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr i32 @_ZNK4llvm11Instruction30getSubclassDataFromInstructionEv(%"class.llvm::Instruction"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Instruction"*, align 8
  store %"class.llvm::Instruction"* %this, %"class.llvm::Instruction"** %this.addr, align 8
  %this1 = load %"class.llvm::Instruction"** %this.addr
  %call = call zeroext i16 @_ZNK4llvm11Instruction24getSubclassDataFromValueEv(%"class.llvm::Instruction"* %this1)
  %conv = zext i16 %call to i32
  %and = and i32 %conv, -32769
  ret i32 %and
}

; Function Attrs: uwtable
define linkonce_odr zeroext i16 @_ZNK4llvm11Instruction24getSubclassDataFromValueEv(%"class.llvm::Instruction"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Instruction"*, align 8
  store %"class.llvm::Instruction"* %this, %"class.llvm::Instruction"** %this.addr, align 8
  %this1 = load %"class.llvm::Instruction"** %this.addr
  %0 = bitcast %"class.llvm::Instruction"* %this1 to %"class.llvm::Value"*
  %call = call zeroext i16 @_ZNK4llvm5Value24getSubclassDataFromValueEv(%"class.llvm::Value"* %0)
  ret i16 %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i16 @_ZNK4llvm5Value24getSubclassDataFromValueEv(%"class.llvm::Value"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"* %this, %"class.llvm::Value"** %this.addr, align 8
  %this1 = load %"class.llvm::Value"** %this.addr
  %SubclassData = getelementptr inbounds %"class.llvm::Value"* %this1, i32 0, i32 3
  %0 = load i16* %SubclassData, align 2
  ret i16 %0
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm11Instruction26setInstructionSubclassDataEt(%"class.llvm::Instruction"* %this, i16 zeroext %D) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Instruction"*, align 8
  %D.addr = alloca i16, align 2
  store %"class.llvm::Instruction"* %this, %"class.llvm::Instruction"** %this.addr, align 8
  store i16 %D, i16* %D.addr, align 2
  %this1 = load %"class.llvm::Instruction"** %this.addr
  %0 = load i16* %D.addr, align 2
  %conv = zext i16 %0 to i32
  %and = and i32 %conv, 32768
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([65 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8]* @.str38, i32 0, i32 0), i32 437, i8* getelementptr inbounds ([67 x i8]* @__PRETTY_FUNCTION__._ZN4llvm11Instruction26setInstructionSubclassDataEt, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %call = call zeroext i16 @_ZNK4llvm11Instruction24getSubclassDataFromValueEv(%"class.llvm::Instruction"* %this1)
  %conv2 = zext i16 %call to i32
  %and3 = and i32 %conv2, 32768
  %2 = load i16* %D.addr, align 2
  %conv4 = zext i16 %2 to i32
  %or = or i32 %and3, %conv4
  %conv5 = trunc i32 %or to i16
  call void @_ZN4llvm11Instruction20setValueSubclassDataEt(%"class.llvm::Instruction"* %this1, i16 zeroext %conv5)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm11Instruction20setValueSubclassDataEt(%"class.llvm::Instruction"* %this, i16 zeroext %D) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Instruction"*, align 8
  %D.addr = alloca i16, align 2
  store %"class.llvm::Instruction"* %this, %"class.llvm::Instruction"** %this.addr, align 8
  store i16 %D, i16* %D.addr, align 2
  %this1 = load %"class.llvm::Instruction"** %this.addr
  %0 = bitcast %"class.llvm::Instruction"* %this1 to %"class.llvm::Value"*
  %1 = load i16* %D.addr, align 2
  call void @_ZN4llvm5Value20setValueSubclassDataEt(%"class.llvm::Value"* %0, i16 zeroext %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4llvm5Value20setValueSubclassDataEt(%"class.llvm::Value"* %this, i16 zeroext %D) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Value"*, align 8
  %D.addr = alloca i16, align 2
  store %"class.llvm::Value"* %this, %"class.llvm::Value"** %this.addr, align 8
  store i16 %D, i16* %D.addr, align 2
  %this1 = load %"class.llvm::Value"** %this.addr
  %0 = load i16* %D.addr, align 2
  %SubclassData = getelementptr inbounds %"class.llvm::Value"* %this1, i32 0, i32 3
  store i16 %0, i16* %SubclassData, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK4llvm8ArrayRefIPNS_5ValueEE4sizeEv(%"class.llvm::ArrayRef.77"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ArrayRef.77"*, align 8
  store %"class.llvm::ArrayRef.77"* %this, %"class.llvm::ArrayRef.77"** %this.addr, align 8
  %this1 = load %"class.llvm::ArrayRef.77"** %this.addr
  %Length = getelementptr inbounds %"class.llvm::ArrayRef.77"* %this1, i32 0, i32 1
  %0 = load i64* %Length, align 8
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZN4llvm8CallInstC2EPNS_5ValueENS_8ArrayRefIS2_EERKNS_5TwineEPNS_10BasicBlockE(%"class.llvm::CallInst"* %this, %"class.llvm::Value"* %Func, %"class.llvm::Value"** %Args.coerce0, i64 %Args.coerce1, %"class.llvm::Twine"* %NameStr, %"class.llvm::BasicBlock"* %InsertAtEnd) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.llvm::CallInst"*, align 8
  %Func.addr = alloca %"class.llvm::Value"*, align 8
  %Args = alloca %"class.llvm::ArrayRef.77", align 8
  %NameStr.addr = alloca %"class.llvm::Twine"*, align 8
  %InsertAtEnd.addr = alloca %"class.llvm::BasicBlock"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp = alloca %"class.llvm::ArrayRef.77", align 8
  store %"class.llvm::CallInst"* %this, %"class.llvm::CallInst"** %this.addr, align 8
  store %"class.llvm::Value"* %Func, %"class.llvm::Value"** %Func.addr, align 8
  %0 = bitcast %"class.llvm::ArrayRef.77"* %Args to { %"class.llvm::Value"**, i64 }*
  %1 = getelementptr { %"class.llvm::Value"**, i64 }* %0, i32 0, i32 0
  store %"class.llvm::Value"** %Args.coerce0, %"class.llvm::Value"*** %1
  %2 = getelementptr { %"class.llvm::Value"**, i64 }* %0, i32 0, i32 1
  store i64 %Args.coerce1, i64* %2
  store %"class.llvm::Twine"* %NameStr, %"class.llvm::Twine"** %NameStr.addr, align 8
  store %"class.llvm::BasicBlock"* %InsertAtEnd, %"class.llvm::BasicBlock"** %InsertAtEnd.addr, align 8
  %this1 = load %"class.llvm::CallInst"** %this.addr
  %3 = bitcast %"class.llvm::CallInst"* %this1 to i8***
  store i8** getelementptr inbounds ([7 x i8*]* @_ZTVN4llvm8CallInstE, i64 0, i64 2), i8*** %3
  %4 = bitcast %"class.llvm::CallInst"* %this1 to %"class.llvm::Instruction"*
  %5 = load %"class.llvm::Value"** %Func.addr, align 8
  %call = call %"class.llvm::Type"* @_ZNK4llvm5Value7getTypeEv(%"class.llvm::Value"* %5)
  %call2 = call %"class.llvm::PointerType"* @_ZN4llvm4castINS_11PointerTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Type"* %call)
  %6 = bitcast %"class.llvm::PointerType"* %call2 to %"class.llvm::SequentialType"*
  %call3 = call %"class.llvm::Type"* @_ZNK4llvm14SequentialType14getElementTypeEv(%"class.llvm::SequentialType"* %6)
  %call4 = call %"class.llvm::FunctionType"* @_ZN4llvm4castINS_12FunctionTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Type"* %call3)
  %call5 = call %"class.llvm::Type"* @_ZNK4llvm12FunctionType13getReturnTypeEv(%"class.llvm::FunctionType"* %call4)
  %call6 = call %"class.llvm::Use"* @_ZN4llvm21VariadicOperandTraitsINS_8CallInstELj1EE6op_endEPS1_(%"class.llvm::CallInst"* %this1)
  %call7 = call i64 @_ZNK4llvm8ArrayRefIPNS_5ValueEE4sizeEv(%"class.llvm::ArrayRef.77"* %Args)
  %add = add i64 %call7, 1
  %idx.neg = sub i64 0, %add
  %add.ptr = getelementptr inbounds %"class.llvm::Use"* %call6, i64 %idx.neg
  %call8 = call i64 @_ZNK4llvm8ArrayRefIPNS_5ValueEE4sizeEv(%"class.llvm::ArrayRef.77"* %Args)
  %add9 = add i64 %call8, 1
  %conv = trunc i64 %add9 to i32
  %7 = load %"class.llvm::BasicBlock"** %InsertAtEnd.addr, align 8
  call void @_ZN4llvm11InstructionC2EPNS_4TypeEjPNS_3UseEjPNS_10BasicBlockE(%"class.llvm::Instruction"* %4, %"class.llvm::Type"* %call5, i32 49, %"class.llvm::Use"* %add.ptr, i32 %conv, %"class.llvm::BasicBlock"* %7)
  %8 = bitcast %"class.llvm::CallInst"* %this1 to i8***
  store i8** getelementptr inbounds ([7 x i8*]* @_ZTVN4llvm8CallInstE, i64 0, i64 2), i8*** %8
  %AttributeList = getelementptr inbounds %"class.llvm::CallInst"* %this1, i32 0, i32 1
  invoke void @_ZN4llvm12AttributeSetC2Ev(%"class.llvm::AttributeSet"* %AttributeList)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %9 = load %"class.llvm::Value"** %Func.addr, align 8
  %10 = bitcast %"class.llvm::ArrayRef.77"* %agg.tmp to i8*
  %11 = bitcast %"class.llvm::ArrayRef.77"* %Args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = load %"class.llvm::Twine"** %NameStr.addr, align 8
  %13 = bitcast %"class.llvm::ArrayRef.77"* %agg.tmp to { %"class.llvm::Value"**, i64 }*
  %14 = getelementptr { %"class.llvm::Value"**, i64 }* %13, i32 0, i32 0
  %15 = load %"class.llvm::Value"*** %14, align 1
  %16 = getelementptr { %"class.llvm::Value"**, i64 }* %13, i32 0, i32 1
  %17 = load i64* %16, align 1
  invoke void @_ZN4llvm8CallInst4initEPNS_5ValueENS_8ArrayRefIS2_EERKNS_5TwineE(%"class.llvm::CallInst"* %this1, %"class.llvm::Value"* %9, %"class.llvm::Value"** %15, i64 %17, %"class.llvm::Twine"* %12)
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %invoke.cont
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %18 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  store i8* %19, i8** %exn.slot
  %20 = extractvalue { i8*, i32 } %18, 1
  store i32 %20, i32* %ehselector.slot
  %21 = bitcast %"class.llvm::CallInst"* %this1 to %"class.llvm::Instruction"*
  invoke void @_ZN4llvm11InstructionD2Ev(%"class.llvm::Instruction"* %21)
          to label %invoke.cont11 unwind label %terminate.lpad

invoke.cont11:                                    ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont11
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val12 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val12

terminate.lpad:                                   ; preds = %lpad
  %22 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %23 = extractvalue { i8*, i32 } %22, 0
  call void @__clang_call_terminate(i8* %23) #13
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::FunctionType"* @_ZN4llvm4castINS_12FunctionTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Type"* %Val) #8 {
entry:
  %Val.addr = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %Val, %"class.llvm::Type"** %Val.addr, align 8
  %call = call zeroext i1 @_ZN4llvm3isaINS_12FunctionTypeEPNS_4TypeEEEbRKT0_(%"class.llvm::Type"** %Val.addr)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([59 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8]* @.str40, i32 0, i32 0), i32 239, i8* getelementptr inbounds ([95 x i8]* @__PRETTY_FUNCTION__._ZN4llvm4castINS_12FunctionTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %0, %cond.true
  %call1 = call %"class.llvm::FunctionType"* @_ZN4llvm16cast_convert_valINS_12FunctionTypeEPNS_4TypeES3_E4doitERKS3_(%"class.llvm::Type"** %Val.addr)
  ret %"class.llvm::FunctionType"* %call1
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::PointerType"* @_ZN4llvm4castINS_11PointerTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Type"* %Val) #8 {
entry:
  %Val.addr = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %Val, %"class.llvm::Type"** %Val.addr, align 8
  %call = call zeroext i1 @_ZN4llvm3isaINS_11PointerTypeEPNS_4TypeEEEbRKT0_(%"class.llvm::Type"** %Val.addr)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([59 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8]* @.str40, i32 0, i32 0), i32 239, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__._ZN4llvm4castINS_11PointerTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %0, %cond.true
  %call1 = call %"class.llvm::PointerType"* @_ZN4llvm16cast_convert_valINS_11PointerTypeEPNS_4TypeES3_E4doitERKS3_(%"class.llvm::Type"** %Val.addr)
  ret %"class.llvm::PointerType"* %call1
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Type"* @_ZNK4llvm14SequentialType14getElementTypeEv(%"class.llvm::SequentialType"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::SequentialType"*, align 8
  store %"class.llvm::SequentialType"* %this, %"class.llvm::SequentialType"** %this.addr, align 8
  %this1 = load %"class.llvm::SequentialType"** %this.addr
  %0 = bitcast %"class.llvm::SequentialType"* %this1 to %"class.llvm::Type"*
  %ContainedTys = getelementptr inbounds %"class.llvm::Type"* %0, i32 0, i32 3
  %1 = load %"class.llvm::Type"*** %ContainedTys, align 8
  %arrayidx = getelementptr inbounds %"class.llvm::Type"** %1, i64 0
  %2 = load %"class.llvm::Type"** %arrayidx, align 8
  ret %"class.llvm::Type"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Type"* @_ZNK4llvm12FunctionType13getReturnTypeEv(%"class.llvm::FunctionType"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::FunctionType"*, align 8
  store %"class.llvm::FunctionType"* %this, %"class.llvm::FunctionType"** %this.addr, align 8
  %this1 = load %"class.llvm::FunctionType"** %this.addr
  %0 = bitcast %"class.llvm::FunctionType"* %this1 to %"class.llvm::Type"*
  %ContainedTys = getelementptr inbounds %"class.llvm::Type"* %0, i32 0, i32 3
  %1 = load %"class.llvm::Type"*** %ContainedTys, align 8
  %arrayidx = getelementptr inbounds %"class.llvm::Type"** %1, i64 0
  %2 = load %"class.llvm::Type"** %arrayidx, align 8
  ret %"class.llvm::Type"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Use"* @_ZN4llvm21VariadicOperandTraitsINS_8CallInstELj1EE6op_endEPS1_(%"class.llvm::CallInst"* %U) #5 align 2 {
entry:
  %U.addr = alloca %"class.llvm::CallInst"*, align 8
  store %"class.llvm::CallInst"* %U, %"class.llvm::CallInst"** %U.addr, align 8
  %0 = load %"class.llvm::CallInst"** %U.addr, align 8
  %1 = bitcast %"class.llvm::CallInst"* %0 to %"class.llvm::Use"*
  ret %"class.llvm::Use"* %1
}

declare void @_ZN4llvm8CallInst4initEPNS_5ValueENS_8ArrayRefIS2_EERKNS_5TwineE(%"class.llvm::CallInst"*, %"class.llvm::Value"*, %"class.llvm::Value"**, i64, %"class.llvm::Twine"*) #1

; Function Attrs: inlinehint uwtable
define linkonce_odr zeroext i1 @_ZN4llvm3isaINS_11PointerTypeEPNS_4TypeEEEbRKT0_(%"class.llvm::Type"** %Val) #8 {
entry:
  %Val.addr = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %Val, %"class.llvm::Type"*** %Val.addr, align 8
  %0 = load %"class.llvm::Type"*** %Val.addr, align 8
  %call = call zeroext i1 @_ZN4llvm13isa_impl_wrapINS_11PointerTypeEKPNS_4TypeEPKS2_E4doitERS4_(%"class.llvm::Type"** %0)
  ret i1 %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::PointerType"* @_ZN4llvm16cast_convert_valINS_11PointerTypeEPNS_4TypeES3_E4doitERKS3_(%"class.llvm::Type"** %Val) #5 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Type"**, align 8
  %Res2 = alloca %"class.llvm::PointerType"*, align 8
  store %"class.llvm::Type"** %Val, %"class.llvm::Type"*** %Val.addr, align 8
  %0 = load %"class.llvm::Type"*** %Val.addr, align 8
  %1 = load %"class.llvm::Type"** %0, align 8
  %2 = bitcast %"class.llvm::Type"* %1 to %"class.llvm::PointerType"*
  store %"class.llvm::PointerType"* %2, %"class.llvm::PointerType"** %Res2, align 8
  %3 = load %"class.llvm::PointerType"** %Res2, align 8
  ret %"class.llvm::PointerType"* %3
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZN4llvm13isa_impl_wrapINS_11PointerTypeEKPNS_4TypeEPKS2_E4doitERS4_(%"class.llvm::Type"** %Val) #0 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Type"**, align 8
  %ref.tmp = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"** %Val, %"class.llvm::Type"*** %Val.addr, align 8
  %0 = load %"class.llvm::Type"*** %Val.addr, align 8
  %call = call %"class.llvm::Type"* @_ZN4llvm13simplify_typeIKPNS_4TypeEE18getSimplifiedValueERS3_(%"class.llvm::Type"** %0)
  store %"class.llvm::Type"* %call, %"class.llvm::Type"** %ref.tmp
  %call1 = call zeroext i1 @_ZN4llvm13isa_impl_wrapINS_11PointerTypeEPKNS_4TypeES4_E4doitERKS4_(%"class.llvm::Type"** %ref.tmp)
  ret i1 %call1
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZN4llvm13isa_impl_wrapINS_11PointerTypeEPKNS_4TypeES4_E4doitERKS4_(%"class.llvm::Type"** %Val) #0 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %Val, %"class.llvm::Type"*** %Val.addr, align 8
  %0 = load %"class.llvm::Type"*** %Val.addr, align 8
  %1 = load %"class.llvm::Type"** %0, align 8
  %call = call zeroext i1 @_ZN4llvm11isa_impl_clINS_11PointerTypeEPKNS_4TypeEE4doitES4_(%"class.llvm::Type"* %1)
  ret i1 %call
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Type"* @_ZN4llvm13simplify_typeIKPNS_4TypeEE18getSimplifiedValueERS3_(%"class.llvm::Type"** %Val) #0 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %Val, %"class.llvm::Type"*** %Val.addr, align 8
  %0 = load %"class.llvm::Type"*** %Val.addr, align 8
  %call = call %"class.llvm::Type"** @_ZN4llvm13simplify_typeIPNS_4TypeEE18getSimplifiedValueERS2_(%"class.llvm::Type"** %0)
  %1 = load %"class.llvm::Type"** %call
  ret %"class.llvm::Type"* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Type"** @_ZN4llvm13simplify_typeIPNS_4TypeEE18getSimplifiedValueERS2_(%"class.llvm::Type"** %Val) #5 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %Val, %"class.llvm::Type"*** %Val.addr, align 8
  %0 = load %"class.llvm::Type"*** %Val.addr, align 8
  ret %"class.llvm::Type"** %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr zeroext i1 @_ZN4llvm11isa_impl_clINS_11PointerTypeEPKNS_4TypeEE4doitES4_(%"class.llvm::Type"* %Val) #8 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %Val, %"class.llvm::Type"** %Val.addr, align 8
  %0 = load %"class.llvm::Type"** %Val.addr, align 8
  %tobool = icmp ne %"class.llvm::Type"* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8]* @.str40, i32 0, i32 0), i32 97, i8* getelementptr inbounds ([141 x i8]* @__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_11PointerTypeEPKNS_4TypeEE4doitES4_, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %"class.llvm::Type"** %Val.addr, align 8
  %call = call zeroext i1 @_ZN4llvm8isa_implINS_11PointerTypeENS_4TypeEvE4doitERKS2_(%"class.llvm::Type"* %2)
  ret i1 %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr zeroext i1 @_ZN4llvm8isa_implINS_11PointerTypeENS_4TypeEvE4doitERKS2_(%"class.llvm::Type"* %Ty) #8 align 2 {
entry:
  %Ty.addr = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %Ty, %"class.llvm::Type"** %Ty.addr, align 8
  %0 = load %"class.llvm::Type"** %Ty.addr, align 8
  %call = call i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* %0)
  %cmp = icmp eq i32 %call, 14
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %this, %"class.llvm::Type"** %this.addr, align 8
  %this1 = load %"class.llvm::Type"** %this.addr
  %IDAndSubclassData = getelementptr inbounds %"class.llvm::Type"* %this1, i32 0, i32 1
  %0 = load i32* %IDAndSubclassData, align 4
  %and = and i32 %0, 255
  ret i32 %and
}

; Function Attrs: inlinehint uwtable
define linkonce_odr zeroext i1 @_ZN4llvm3isaINS_12FunctionTypeEPNS_4TypeEEEbRKT0_(%"class.llvm::Type"** %Val) #8 {
entry:
  %Val.addr = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %Val, %"class.llvm::Type"*** %Val.addr, align 8
  %0 = load %"class.llvm::Type"*** %Val.addr, align 8
  %call = call zeroext i1 @_ZN4llvm13isa_impl_wrapINS_12FunctionTypeEKPNS_4TypeEPKS2_E4doitERS4_(%"class.llvm::Type"** %0)
  ret i1 %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::FunctionType"* @_ZN4llvm16cast_convert_valINS_12FunctionTypeEPNS_4TypeES3_E4doitERKS3_(%"class.llvm::Type"** %Val) #5 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Type"**, align 8
  %Res2 = alloca %"class.llvm::FunctionType"*, align 8
  store %"class.llvm::Type"** %Val, %"class.llvm::Type"*** %Val.addr, align 8
  %0 = load %"class.llvm::Type"*** %Val.addr, align 8
  %1 = load %"class.llvm::Type"** %0, align 8
  %2 = bitcast %"class.llvm::Type"* %1 to %"class.llvm::FunctionType"*
  store %"class.llvm::FunctionType"* %2, %"class.llvm::FunctionType"** %Res2, align 8
  %3 = load %"class.llvm::FunctionType"** %Res2, align 8
  ret %"class.llvm::FunctionType"* %3
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZN4llvm13isa_impl_wrapINS_12FunctionTypeEKPNS_4TypeEPKS2_E4doitERS4_(%"class.llvm::Type"** %Val) #0 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Type"**, align 8
  %ref.tmp = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"** %Val, %"class.llvm::Type"*** %Val.addr, align 8
  %0 = load %"class.llvm::Type"*** %Val.addr, align 8
  %call = call %"class.llvm::Type"* @_ZN4llvm13simplify_typeIKPNS_4TypeEE18getSimplifiedValueERS3_(%"class.llvm::Type"** %0)
  store %"class.llvm::Type"* %call, %"class.llvm::Type"** %ref.tmp
  %call1 = call zeroext i1 @_ZN4llvm13isa_impl_wrapINS_12FunctionTypeEPKNS_4TypeES4_E4doitERKS4_(%"class.llvm::Type"** %ref.tmp)
  ret i1 %call1
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZN4llvm13isa_impl_wrapINS_12FunctionTypeEPKNS_4TypeES4_E4doitERKS4_(%"class.llvm::Type"** %Val) #0 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %Val, %"class.llvm::Type"*** %Val.addr, align 8
  %0 = load %"class.llvm::Type"*** %Val.addr, align 8
  %1 = load %"class.llvm::Type"** %0, align 8
  %call = call zeroext i1 @_ZN4llvm11isa_impl_clINS_12FunctionTypeEPKNS_4TypeEE4doitES4_(%"class.llvm::Type"* %1)
  ret i1 %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr zeroext i1 @_ZN4llvm11isa_impl_clINS_12FunctionTypeEPKNS_4TypeEE4doitES4_(%"class.llvm::Type"* %Val) #8 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %Val, %"class.llvm::Type"** %Val.addr, align 8
  %0 = load %"class.llvm::Type"** %Val.addr, align 8
  %tobool = icmp ne %"class.llvm::Type"* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8]* @.str40, i32 0, i32 0), i32 97, i8* getelementptr inbounds ([143 x i8]* @__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_12FunctionTypeEPKNS_4TypeEE4doitES4_, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %"class.llvm::Type"** %Val.addr, align 8
  %call = call zeroext i1 @_ZN4llvm8isa_implINS_12FunctionTypeENS_4TypeEvE4doitERKS2_(%"class.llvm::Type"* %2)
  ret i1 %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr zeroext i1 @_ZN4llvm8isa_implINS_12FunctionTypeENS_4TypeEvE4doitERKS2_(%"class.llvm::Type"* %Val) #8 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %Val, %"class.llvm::Type"** %Val.addr, align 8
  %0 = load %"class.llvm::Type"** %Val.addr, align 8
  %call = call zeroext i1 @_ZN4llvm12FunctionType7classofEPKNS_4TypeE(%"class.llvm::Type"* %0)
  ret i1 %call
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr zeroext i1 @_ZN4llvm12FunctionType7classofEPKNS_4TypeE(%"class.llvm::Type"* %T) #9 align 2 {
entry:
  %T.addr = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %T, %"class.llvm::Type"** %T.addr, align 8
  %0 = load %"class.llvm::Type"** %T.addr, align 8
  %call = call i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* %0)
  %cmp = icmp eq i32 %call, 11
  ret i1 %cmp
}

declare void @_ZN4llvm10BranchInstC1EPNS_10BasicBlockES2_(%"class.llvm::BranchInst"*, %"class.llvm::BasicBlock"*, %"class.llvm::BasicBlock"*) #1

declare void @_ZN4llvm10BranchInstC1EPNS_10BasicBlockES2_PNS_5ValueES2_(%"class.llvm::BranchInst"*, %"class.llvm::BasicBlock"*, %"class.llvm::BasicBlock"*, %"class.llvm::Value"*, %"class.llvm::BasicBlock"*) #1

declare void @_ZN4llvm7CmpInstC2EPNS_4TypeENS_11Instruction8OtherOpsEtPNS_5ValueES6_RKNS_5TwineEPNS_10BasicBlockE(%"class.llvm::CmpInst"*, %"class.llvm::Type"*, i32, i16 zeroext, %"class.llvm::Value"*, %"class.llvm::Value"*, %"class.llvm::Twine"*, %"class.llvm::BasicBlock"*) #1

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Type"* @_ZN4llvm7CmpInst17makeCmpResultTypeEPNS_4TypeE(%"class.llvm::Type"* %opnd_type) #0 align 2 {
entry:
  %retval = alloca %"class.llvm::Type"*, align 8
  %opnd_type.addr = alloca %"class.llvm::Type"*, align 8
  %vt = alloca %"class.llvm::VectorType"*, align 8
  store %"class.llvm::Type"* %opnd_type, %"class.llvm::Type"** %opnd_type.addr, align 8
  %0 = load %"class.llvm::Type"** %opnd_type.addr, align 8
  %call = call %"class.llvm::VectorType"* @_ZN4llvm8dyn_castINS_10VectorTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Type"* %0)
  store %"class.llvm::VectorType"* %call, %"class.llvm::VectorType"** %vt, align 8
  %1 = load %"class.llvm::VectorType"** %vt, align 8
  %tobool = icmp ne %"class.llvm::VectorType"* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %"class.llvm::Type"** %opnd_type.addr, align 8
  %call1 = call %"class.llvm::LLVMContext"* @_ZNK4llvm4Type10getContextEv(%"class.llvm::Type"* %2)
  %call2 = call %"class.llvm::IntegerType"* @_ZN4llvm4Type9getInt1TyERNS_11LLVMContextE(%"class.llvm::LLVMContext"* %call1)
  %3 = bitcast %"class.llvm::IntegerType"* %call2 to %"class.llvm::Type"*
  %4 = load %"class.llvm::VectorType"** %vt, align 8
  %call3 = call i32 @_ZNK4llvm10VectorType14getNumElementsEv(%"class.llvm::VectorType"* %4)
  %call4 = call %"class.llvm::VectorType"* @_ZN4llvm10VectorType3getEPNS_4TypeEj(%"class.llvm::Type"* %3, i32 %call3)
  %5 = bitcast %"class.llvm::VectorType"* %call4 to %"class.llvm::Type"*
  store %"class.llvm::Type"* %5, %"class.llvm::Type"** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %"class.llvm::Type"** %opnd_type.addr, align 8
  %call5 = call %"class.llvm::LLVMContext"* @_ZNK4llvm4Type10getContextEv(%"class.llvm::Type"* %6)
  %call6 = call %"class.llvm::IntegerType"* @_ZN4llvm4Type9getInt1TyERNS_11LLVMContextE(%"class.llvm::LLVMContext"* %call5)
  %7 = bitcast %"class.llvm::IntegerType"* %call6 to %"class.llvm::Type"*
  store %"class.llvm::Type"* %7, %"class.llvm::Type"** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %"class.llvm::Type"** %retval
  ret %"class.llvm::Type"* %8
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm8ICmpInst8AssertOKEv(%"class.llvm::ICmpInst"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ICmpInst"*, align 8
  store %"class.llvm::ICmpInst"* %this, %"class.llvm::ICmpInst"** %this.addr, align 8
  %this1 = load %"class.llvm::ICmpInst"** %this.addr
  %0 = bitcast %"class.llvm::ICmpInst"* %this1 to %"class.llvm::CmpInst"*
  %call = call i32 @_ZNK4llvm7CmpInst12getPredicateEv(%"class.llvm::CmpInst"* %0)
  %cmp = icmp sge i32 %call, 32
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = bitcast %"class.llvm::ICmpInst"* %this1 to %"class.llvm::CmpInst"*
  %call2 = call i32 @_ZNK4llvm7CmpInst12getPredicateEv(%"class.llvm::CmpInst"* %1)
  %cmp3 = icmp sle i32 %call2, 41
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  call void @__assert_fail(i8* getelementptr inbounds ([132 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8]* @.str31, i32 0, i32 0), i32 915, i8* getelementptr inbounds ([32 x i8]* @__PRETTY_FUNCTION__._ZN4llvm8ICmpInst8AssertOKEv, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = bitcast %"class.llvm::ICmpInst"* %this1 to %"class.llvm::CmpInst"*
  %call4 = call %"class.llvm::Value"* @_ZNK4llvm7CmpInst10getOperandEj(%"class.llvm::CmpInst"* %3, i32 0)
  %call5 = call %"class.llvm::Type"* @_ZNK4llvm5Value7getTypeEv(%"class.llvm::Value"* %call4)
  %4 = bitcast %"class.llvm::ICmpInst"* %this1 to %"class.llvm::CmpInst"*
  %call6 = call %"class.llvm::Value"* @_ZNK4llvm7CmpInst10getOperandEj(%"class.llvm::CmpInst"* %4, i32 1)
  %call7 = call %"class.llvm::Type"* @_ZNK4llvm5Value7getTypeEv(%"class.llvm::Value"* %call6)
  %cmp8 = icmp eq %"class.llvm::Type"* %call5, %call7
  br i1 %cmp8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([118 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8]* @.str31, i32 0, i32 0), i32 917, i8* getelementptr inbounds ([32 x i8]* @__PRETTY_FUNCTION__._ZN4llvm8ICmpInst8AssertOKEv, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end11

cond.end11:                                       ; preds = %5, %cond.true9
  %6 = bitcast %"class.llvm::ICmpInst"* %this1 to %"class.llvm::CmpInst"*
  %call12 = call %"class.llvm::Value"* @_ZNK4llvm7CmpInst10getOperandEj(%"class.llvm::CmpInst"* %6, i32 0)
  %call13 = call %"class.llvm::Type"* @_ZNK4llvm5Value7getTypeEv(%"class.llvm::Value"* %call12)
  %call14 = call zeroext i1 @_ZNK4llvm4Type18isIntOrIntVectorTyEv(%"class.llvm::Type"* %call13)
  br i1 %call14, label %cond.true18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end11
  %7 = bitcast %"class.llvm::ICmpInst"* %this1 to %"class.llvm::CmpInst"*
  %call15 = call %"class.llvm::Value"* @_ZNK4llvm7CmpInst10getOperandEj(%"class.llvm::CmpInst"* %7, i32 0)
  %call16 = call %"class.llvm::Type"* @_ZNK4llvm5Value7getTypeEv(%"class.llvm::Value"* %call15)
  %call17 = call zeroext i1 @_ZNK4llvm4Type18isPtrOrPtrVectorTyEv(%"class.llvm::Type"* %call16)
  br i1 %call17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %lor.lhs.false, %cond.end11
  br label %cond.end20

cond.false19:                                     ; preds = %lor.lhs.false
  call void @__assert_fail(i8* getelementptr inbounds ([147 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8]* @.str31, i32 0, i32 0), i32 921, i8* getelementptr inbounds ([32 x i8]* @__PRETTY_FUNCTION__._ZN4llvm8ICmpInst8AssertOKEv, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end20

cond.end20:                                       ; preds = %8, %cond.true18
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZN4llvm7CmpInstD2Ev(%"class.llvm::CmpInst"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.llvm::CmpInst"*, align 8
  store %"class.llvm::CmpInst"* %this, %"class.llvm::CmpInst"** %this.addr, align 8
  %this1 = load %"class.llvm::CmpInst"** %this.addr
  %0 = bitcast %"class.llvm::CmpInst"* %this1 to %"class.llvm::Instruction"*
  call void @_ZN4llvm11InstructionD2Ev(%"class.llvm::Instruction"* %0)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr i32 @_ZNK4llvm7CmpInst12getPredicateEv(%"class.llvm::CmpInst"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::CmpInst"*, align 8
  store %"class.llvm::CmpInst"* %this, %"class.llvm::CmpInst"** %this.addr, align 8
  %this1 = load %"class.llvm::CmpInst"** %this.addr
  %0 = bitcast %"class.llvm::CmpInst"* %this1 to %"class.llvm::Instruction"*
  %call = call i32 @_ZNK4llvm11Instruction30getSubclassDataFromInstructionEv(%"class.llvm::Instruction"* %0)
  ret i32 %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Value"* @_ZNK4llvm7CmpInst10getOperandEj(%"class.llvm::CmpInst"* %this, i32 %i_nocapture) #8 align 2 {
entry:
  %this.addr = alloca %"class.llvm::CmpInst"*, align 8
  %i_nocapture.addr = alloca i32, align 4
  store %"class.llvm::CmpInst"* %this, %"class.llvm::CmpInst"** %this.addr, align 8
  store i32 %i_nocapture, i32* %i_nocapture.addr, align 4
  %this1 = load %"class.llvm::CmpInst"** %this.addr
  %0 = load i32* %i_nocapture.addr, align 4
  %1 = bitcast %"class.llvm::CmpInst"* %this1 to %"class.llvm::User"*
  %call = call i32 @_ZN4llvm21FixedNumOperandTraitsINS_7CmpInstELj2EE8operandsEPKNS_4UserE(%"class.llvm::User"* %1)
  %cmp = icmp ult i32 %0, %call
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([85 x i8]* @.str45, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8]* @.str46, i32 0, i32 0), i32 853, i8* getelementptr inbounds ([59 x i8]* @__PRETTY_FUNCTION__._ZNK4llvm7CmpInst10getOperandEj, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load i32* %i_nocapture.addr, align 4
  %idxprom = zext i32 %3 to i64
  %call2 = call %"class.llvm::Use"* @_ZN4llvm21FixedNumOperandTraitsINS_7CmpInstELj2EE8op_beginEPS1_(%"class.llvm::CmpInst"* %this1)
  %arrayidx = getelementptr inbounds %"class.llvm::Use"* %call2, i64 %idxprom
  %call3 = call %"class.llvm::Value"* @_ZNK4llvm3Use3getEv(%"class.llvm::Use"* %arrayidx)
  %call4 = call %"class.llvm::Value"* @_ZN4llvm12cast_or_nullINS_5ValueES1_EENS_10cast_rettyIT_PT0_E8ret_typeES5_(%"class.llvm::Value"* %call3)
  ret %"class.llvm::Value"* %call4
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNK4llvm4Type18isIntOrIntVectorTyEv(%"class.llvm::Type"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %this, %"class.llvm::Type"** %this.addr, align 8
  %this1 = load %"class.llvm::Type"** %this.addr
  %call = call %"class.llvm::Type"* @_ZNK4llvm4Type13getScalarTypeEv(%"class.llvm::Type"* %this1)
  %call2 = call zeroext i1 @_ZNK4llvm4Type11isIntegerTyEv(%"class.llvm::Type"* %call)
  ret i1 %call2
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNK4llvm4Type18isPtrOrPtrVectorTyEv(%"class.llvm::Type"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %this, %"class.llvm::Type"** %this.addr, align 8
  %this1 = load %"class.llvm::Type"** %this.addr
  %call = call %"class.llvm::Type"* @_ZNK4llvm4Type13getScalarTypeEv(%"class.llvm::Type"* %this1)
  %call2 = call zeroext i1 @_ZNK4llvm4Type11isPointerTyEv(%"class.llvm::Type"* %call)
  ret i1 %call2
}

declare %"class.llvm::Type"* @_ZNK4llvm4Type13getScalarTypeEv(%"class.llvm::Type"*) #1

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK4llvm4Type11isPointerTyEv(%"class.llvm::Type"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %this, %"class.llvm::Type"** %this.addr, align 8
  %this1 = load %"class.llvm::Type"** %this.addr
  %call = call i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* %this1)
  %cmp = icmp eq i32 %call, 14
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK4llvm4Type11isIntegerTyEv(%"class.llvm::Type"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %this, %"class.llvm::Type"** %this.addr, align 8
  %this1 = load %"class.llvm::Type"** %this.addr
  %call = call i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* %this1)
  %cmp = icmp eq i32 %call, 10
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN4llvm21FixedNumOperandTraitsINS_7CmpInstELj2EE8operandsEPKNS_4UserE(%"class.llvm::User"*) #5 align 2 {
entry:
  %.addr = alloca %"class.llvm::User"*, align 8
  store %"class.llvm::User"* %0, %"class.llvm::User"** %.addr, align 8
  ret i32 2
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Value"* @_ZN4llvm12cast_or_nullINS_5ValueES1_EENS_10cast_rettyIT_PT0_E8ret_typeES5_(%"class.llvm::Value"* %Val) #8 {
entry:
  %retval = alloca %"class.llvm::Value"*, align 8
  %Val.addr = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"* %Val, %"class.llvm::Value"** %Val.addr, align 8
  %0 = load %"class.llvm::Value"** %Val.addr, align 8
  %cmp = icmp eq %"class.llvm::Value"* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %"class.llvm::Value"* null, %"class.llvm::Value"** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @_ZN4llvm3isaINS_5ValueEPS1_EEbRKT0_(%"class.llvm::Value"** %Val.addr)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([67 x i8]* @.str47, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8]* @.str40, i32 0, i32 0), i32 250, i8* getelementptr inbounds ([97 x i8]* @__PRETTY_FUNCTION__._ZN4llvm12cast_or_nullINS_5ValueES1_EENS_10cast_rettyIT_PT0_E8ret_typeES5_, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %"class.llvm::Value"** %Val.addr, align 8
  %call1 = call %"class.llvm::Value"* @_ZN4llvm4castINS_5ValueES1_EENS_10cast_rettyIT_PT0_E8ret_typeES5_(%"class.llvm::Value"* %2)
  store %"class.llvm::Value"* %call1, %"class.llvm::Value"** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %3 = load %"class.llvm::Value"** %retval
  ret %"class.llvm::Value"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Use"* @_ZN4llvm21FixedNumOperandTraitsINS_7CmpInstELj2EE8op_beginEPS1_(%"class.llvm::CmpInst"* %U) #5 align 2 {
entry:
  %U.addr = alloca %"class.llvm::CmpInst"*, align 8
  store %"class.llvm::CmpInst"* %U, %"class.llvm::CmpInst"** %U.addr, align 8
  %0 = load %"class.llvm::CmpInst"** %U.addr, align 8
  %1 = bitcast %"class.llvm::CmpInst"* %0 to %"class.llvm::Use"*
  %add.ptr = getelementptr inbounds %"class.llvm::Use"* %1, i64 -2
  ret %"class.llvm::Use"* %add.ptr
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Value"* @_ZNK4llvm3Use3getEv(%"class.llvm::Use"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Use"*, align 8
  store %"class.llvm::Use"* %this, %"class.llvm::Use"** %this.addr, align 8
  %this1 = load %"class.llvm::Use"** %this.addr
  %Val = getelementptr inbounds %"class.llvm::Use"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::Value"** %Val, align 8
  ret %"class.llvm::Value"* %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr zeroext i1 @_ZN4llvm3isaINS_5ValueEPS1_EEbRKT0_(%"class.llvm::Value"** %Val) #8 {
entry:
  %Val.addr = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %Val, %"class.llvm::Value"*** %Val.addr, align 8
  %0 = load %"class.llvm::Value"*** %Val.addr, align 8
  %call = call zeroext i1 @_ZN4llvm13isa_impl_wrapINS_5ValueEKPS1_PKS1_E4doitERS3_(%"class.llvm::Value"** %0)
  ret i1 %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Value"* @_ZN4llvm4castINS_5ValueES1_EENS_10cast_rettyIT_PT0_E8ret_typeES5_(%"class.llvm::Value"* %Val) #8 {
entry:
  %Val.addr = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"* %Val, %"class.llvm::Value"** %Val.addr, align 8
  %call = call zeroext i1 @_ZN4llvm3isaINS_5ValueEPS1_EEbRKT0_(%"class.llvm::Value"** %Val.addr)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([59 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8]* @.str40, i32 0, i32 0), i32 239, i8* getelementptr inbounds ([89 x i8]* @__PRETTY_FUNCTION__._ZN4llvm4castINS_5ValueES1_EENS_10cast_rettyIT_PT0_E8ret_typeES5_, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %0, %cond.true
  %call1 = call %"class.llvm::Value"* @_ZN4llvm16cast_convert_valINS_5ValueEPS1_S2_E4doitERKS2_(%"class.llvm::Value"** %Val.addr)
  ret %"class.llvm::Value"* %call1
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Value"* @_ZN4llvm16cast_convert_valINS_5ValueEPS1_S2_E4doitERKS2_(%"class.llvm::Value"** %Val) #5 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Value"**, align 8
  %Res2 = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"** %Val, %"class.llvm::Value"*** %Val.addr, align 8
  %0 = load %"class.llvm::Value"*** %Val.addr, align 8
  %1 = load %"class.llvm::Value"** %0, align 8
  store %"class.llvm::Value"* %1, %"class.llvm::Value"** %Res2, align 8
  %2 = load %"class.llvm::Value"** %Res2, align 8
  ret %"class.llvm::Value"* %2
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZN4llvm13isa_impl_wrapINS_5ValueEKPS1_PKS1_E4doitERS3_(%"class.llvm::Value"** %Val) #0 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Value"**, align 8
  %ref.tmp = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"** %Val, %"class.llvm::Value"*** %Val.addr, align 8
  %0 = load %"class.llvm::Value"*** %Val.addr, align 8
  %call = call %"class.llvm::Value"* @_ZN4llvm13simplify_typeIKPNS_5ValueEE18getSimplifiedValueERS3_(%"class.llvm::Value"** %0)
  store %"class.llvm::Value"* %call, %"class.llvm::Value"** %ref.tmp
  %call1 = call zeroext i1 @_ZN4llvm13isa_impl_wrapINS_5ValueEPKS1_S3_E4doitERKS3_(%"class.llvm::Value"** %ref.tmp)
  ret i1 %call1
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZN4llvm13isa_impl_wrapINS_5ValueEPKS1_S3_E4doitERKS3_(%"class.llvm::Value"** %Val) #0 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %Val, %"class.llvm::Value"*** %Val.addr, align 8
  %0 = load %"class.llvm::Value"*** %Val.addr, align 8
  %1 = load %"class.llvm::Value"** %0, align 8
  %call = call zeroext i1 @_ZN4llvm11isa_impl_clINS_5ValueEPKS1_E4doitES3_(%"class.llvm::Value"* %1)
  ret i1 %call
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Value"* @_ZN4llvm13simplify_typeIKPNS_5ValueEE18getSimplifiedValueERS3_(%"class.llvm::Value"** %Val) #0 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %Val, %"class.llvm::Value"*** %Val.addr, align 8
  %0 = load %"class.llvm::Value"*** %Val.addr, align 8
  %call = call %"class.llvm::Value"** @_ZN4llvm13simplify_typeIPNS_5ValueEE18getSimplifiedValueERS2_(%"class.llvm::Value"** %0)
  %1 = load %"class.llvm::Value"** %call
  ret %"class.llvm::Value"* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Value"** @_ZN4llvm13simplify_typeIPNS_5ValueEE18getSimplifiedValueERS2_(%"class.llvm::Value"** %Val) #5 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %Val, %"class.llvm::Value"*** %Val.addr, align 8
  %0 = load %"class.llvm::Value"*** %Val.addr, align 8
  ret %"class.llvm::Value"** %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr zeroext i1 @_ZN4llvm11isa_impl_clINS_5ValueEPKS1_E4doitES3_(%"class.llvm::Value"* %Val) #8 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"* %Val, %"class.llvm::Value"** %Val.addr, align 8
  %0 = load %"class.llvm::Value"** %Val.addr, align 8
  %tobool = icmp ne %"class.llvm::Value"* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8]* @.str40, i32 0, i32 0), i32 97, i8* getelementptr inbounds ([131 x i8]* @__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_5ValueEPKS1_E4doitES3_, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %"class.llvm::Value"** %Val.addr, align 8
  %call = call zeroext i1 @_ZN4llvm8isa_implINS_5ValueES1_vE4doitERKS1_(%"class.llvm::Value"* %2)
  ret i1 %call
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr zeroext i1 @_ZN4llvm8isa_implINS_5ValueES1_vE4doitERKS1_(%"class.llvm::Value"*) #9 align 2 {
entry:
  %.addr = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"* %0, %"class.llvm::Value"** %.addr, align 8
  ret i1 true
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::VectorType"* @_ZN4llvm8dyn_castINS_10VectorTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Type"* %Val) #8 {
entry:
  %Val.addr = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %Val, %"class.llvm::Type"** %Val.addr, align 8
  %call = call zeroext i1 @_ZN4llvm3isaINS_10VectorTypeEPNS_4TypeEEEbRKT0_(%"class.llvm::Type"** %Val.addr)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load %"class.llvm::Type"** %Val.addr, align 8
  %call1 = call %"class.llvm::VectorType"* @_ZN4llvm4castINS_10VectorTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Type"* %0)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"class.llvm::VectorType"* [ %call1, %cond.true ], [ null, %cond.false ]
  ret %"class.llvm::VectorType"* %cond
}

declare %"class.llvm::VectorType"* @_ZN4llvm10VectorType3getEPNS_4TypeEj(%"class.llvm::Type"*, i32) #1

declare %"class.llvm::IntegerType"* @_ZN4llvm4Type9getInt1TyERNS_11LLVMContextE(%"class.llvm::LLVMContext"*) #1

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::LLVMContext"* @_ZNK4llvm4Type10getContextEv(%"class.llvm::Type"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %this, %"class.llvm::Type"** %this.addr, align 8
  %this1 = load %"class.llvm::Type"** %this.addr
  %Context = getelementptr inbounds %"class.llvm::Type"* %this1, i32 0, i32 0
  %ref = load %"class.llvm::LLVMContext"** %Context, align 8
  ret %"class.llvm::LLVMContext"* %ref
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZNK4llvm10VectorType14getNumElementsEv(%"class.llvm::VectorType"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::VectorType"*, align 8
  store %"class.llvm::VectorType"* %this, %"class.llvm::VectorType"** %this.addr, align 8
  %this1 = load %"class.llvm::VectorType"** %this.addr
  %NumElements = getelementptr inbounds %"class.llvm::VectorType"* %this1, i32 0, i32 1
  %0 = load i32* %NumElements, align 4
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr zeroext i1 @_ZN4llvm3isaINS_10VectorTypeEPNS_4TypeEEEbRKT0_(%"class.llvm::Type"** %Val) #8 {
entry:
  %Val.addr = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %Val, %"class.llvm::Type"*** %Val.addr, align 8
  %0 = load %"class.llvm::Type"*** %Val.addr, align 8
  %call = call zeroext i1 @_ZN4llvm13isa_impl_wrapINS_10VectorTypeEKPNS_4TypeEPKS2_E4doitERS4_(%"class.llvm::Type"** %0)
  ret i1 %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::VectorType"* @_ZN4llvm4castINS_10VectorTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Type"* %Val) #8 {
entry:
  %Val.addr = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %Val, %"class.llvm::Type"** %Val.addr, align 8
  %call = call zeroext i1 @_ZN4llvm3isaINS_10VectorTypeEPNS_4TypeEEEbRKT0_(%"class.llvm::Type"** %Val.addr)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([59 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8]* @.str40, i32 0, i32 0), i32 239, i8* getelementptr inbounds ([93 x i8]* @__PRETTY_FUNCTION__._ZN4llvm4castINS_10VectorTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %0, %cond.true
  %call1 = call %"class.llvm::VectorType"* @_ZN4llvm16cast_convert_valINS_10VectorTypeEPNS_4TypeES3_E4doitERKS3_(%"class.llvm::Type"** %Val.addr)
  ret %"class.llvm::VectorType"* %call1
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::VectorType"* @_ZN4llvm16cast_convert_valINS_10VectorTypeEPNS_4TypeES3_E4doitERKS3_(%"class.llvm::Type"** %Val) #5 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Type"**, align 8
  %Res2 = alloca %"class.llvm::VectorType"*, align 8
  store %"class.llvm::Type"** %Val, %"class.llvm::Type"*** %Val.addr, align 8
  %0 = load %"class.llvm::Type"*** %Val.addr, align 8
  %1 = load %"class.llvm::Type"** %0, align 8
  %2 = bitcast %"class.llvm::Type"* %1 to %"class.llvm::VectorType"*
  store %"class.llvm::VectorType"* %2, %"class.llvm::VectorType"** %Res2, align 8
  %3 = load %"class.llvm::VectorType"** %Res2, align 8
  ret %"class.llvm::VectorType"* %3
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZN4llvm13isa_impl_wrapINS_10VectorTypeEKPNS_4TypeEPKS2_E4doitERS4_(%"class.llvm::Type"** %Val) #0 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Type"**, align 8
  %ref.tmp = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"** %Val, %"class.llvm::Type"*** %Val.addr, align 8
  %0 = load %"class.llvm::Type"*** %Val.addr, align 8
  %call = call %"class.llvm::Type"* @_ZN4llvm13simplify_typeIKPNS_4TypeEE18getSimplifiedValueERS3_(%"class.llvm::Type"** %0)
  store %"class.llvm::Type"* %call, %"class.llvm::Type"** %ref.tmp
  %call1 = call zeroext i1 @_ZN4llvm13isa_impl_wrapINS_10VectorTypeEPKNS_4TypeES4_E4doitERKS4_(%"class.llvm::Type"** %ref.tmp)
  ret i1 %call1
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZN4llvm13isa_impl_wrapINS_10VectorTypeEPKNS_4TypeES4_E4doitERKS4_(%"class.llvm::Type"** %Val) #0 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %Val, %"class.llvm::Type"*** %Val.addr, align 8
  %0 = load %"class.llvm::Type"*** %Val.addr, align 8
  %1 = load %"class.llvm::Type"** %0, align 8
  %call = call zeroext i1 @_ZN4llvm11isa_impl_clINS_10VectorTypeEPKNS_4TypeEE4doitES4_(%"class.llvm::Type"* %1)
  ret i1 %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr zeroext i1 @_ZN4llvm11isa_impl_clINS_10VectorTypeEPKNS_4TypeEE4doitES4_(%"class.llvm::Type"* %Val) #8 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %Val, %"class.llvm::Type"** %Val.addr, align 8
  %0 = load %"class.llvm::Type"** %Val.addr, align 8
  %tobool = icmp ne %"class.llvm::Type"* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8]* @.str40, i32 0, i32 0), i32 97, i8* getelementptr inbounds ([139 x i8]* @__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_10VectorTypeEPKNS_4TypeEE4doitES4_, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %"class.llvm::Type"** %Val.addr, align 8
  %call = call zeroext i1 @_ZN4llvm8isa_implINS_10VectorTypeENS_4TypeEvE4doitERKS2_(%"class.llvm::Type"* %2)
  ret i1 %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr zeroext i1 @_ZN4llvm8isa_implINS_10VectorTypeENS_4TypeEvE4doitERKS2_(%"class.llvm::Type"* %Val) #8 align 2 {
entry:
  %Val.addr = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %Val, %"class.llvm::Type"** %Val.addr, align 8
  %0 = load %"class.llvm::Type"** %Val.addr, align 8
  %call = call zeroext i1 @_ZN4llvm10VectorType7classofEPKNS_4TypeE(%"class.llvm::Type"* %0)
  ret i1 %call
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr zeroext i1 @_ZN4llvm10VectorType7classofEPKNS_4TypeE(%"class.llvm::Type"* %T) #9 align 2 {
entry:
  %T.addr = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %T, %"class.llvm::Type"** %T.addr, align 8
  %0 = load %"class.llvm::Type"** %T.addr, align 8
  %call = call i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* %0)
  %cmp = icmp eq i32 %call, 15
  ret i1 %cmp
}

declare void @_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(%"class.llvm::BasicBlock"*, %"class.llvm::LLVMContext"*, %"class.llvm::Twine"*, %"class.llvm::Function"*, %"class.llvm::BasicBlock"*) #1

; Function Attrs: uwtable
define linkonce_odr void @_ZNK4llvm8Function18CheckLazyArgumentsEv(%"class.llvm::Function"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Function"*, align 8
  store %"class.llvm::Function"* %this, %"class.llvm::Function"** %this.addr, align 8
  %this1 = load %"class.llvm::Function"** %this.addr
  %call = call zeroext i1 @_ZNK4llvm8Function16hasLazyArgumentsEv(%"class.llvm::Function"* %this1)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNK4llvm8Function18BuildLazyArgumentsEv(%"class.llvm::Function"* %this1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Argument"* @_ZN4llvm6iplistINS_8ArgumentENS_12ilist_traitsIS1_EEE5beginEv(%"class.llvm::iplist.34"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.llvm::ilist_iterator", align 8
  %this.addr = alloca %"class.llvm::iplist.34"*, align 8
  store %"class.llvm::iplist.34"* %this, %"class.llvm::iplist.34"** %this.addr, align 8
  %this1 = load %"class.llvm::iplist.34"** %this.addr
  call void @_ZNK4llvm6iplistINS_8ArgumentENS_12ilist_traitsIS1_EEE18CreateLazySentinelEv(%"class.llvm::iplist.34"* %this1)
  %Head = getelementptr inbounds %"class.llvm::iplist.34"* %this1, i32 0, i32 1
  %0 = load %"class.llvm::Argument"** %Head, align 8
  call void @_ZN4llvm14ilist_iteratorINS_8ArgumentEEC2EPS1_(%"class.llvm::ilist_iterator"* %retval, %"class.llvm::Argument"* %0)
  %coerce.dive = getelementptr %"class.llvm::ilist_iterator"* %retval, i32 0, i32 0
  %1 = load %"class.llvm::Argument"** %coerce.dive
  ret %"class.llvm::Argument"* %1
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNK4llvm6iplistINS_8ArgumentENS_12ilist_traitsIS1_EEE18CreateLazySentinelEv(%"class.llvm::iplist.34"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::iplist.34"*, align 8
  store %"class.llvm::iplist.34"* %this, %"class.llvm::iplist.34"** %this.addr, align 8
  %this1 = load %"class.llvm::iplist.34"** %this.addr
  %0 = bitcast %"class.llvm::iplist.34"* %this1 to %"struct.llvm::ilist_traits.35"*
  %Head = getelementptr inbounds %"class.llvm::iplist.34"* %this1, i32 0, i32 1
  %1 = load %"class.llvm::Argument"** %Head, align 8
  %call = call %"class.llvm::Argument"* @_ZNK4llvm12ilist_traitsINS_8ArgumentEE10ensureHeadEPS1_(%"struct.llvm::ilist_traits.35"* %0, %"class.llvm::Argument"* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4llvm14ilist_iteratorINS_8ArgumentEEC2EPS1_(%"class.llvm::ilist_iterator"* %this, %"class.llvm::Argument"* %NP) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_iterator"*, align 8
  %NP.addr = alloca %"class.llvm::Argument"*, align 8
  store %"class.llvm::ilist_iterator"* %this, %"class.llvm::ilist_iterator"** %this.addr, align 8
  store %"class.llvm::Argument"* %NP, %"class.llvm::Argument"** %NP.addr, align 8
  %this1 = load %"class.llvm::ilist_iterator"** %this.addr
  %0 = bitcast %"class.llvm::ilist_iterator"* %this1 to %"struct.std::iterator"*
  %NodePtr = getelementptr inbounds %"class.llvm::ilist_iterator"* %this1, i32 0, i32 0
  %1 = load %"class.llvm::Argument"** %NP.addr, align 8
  store %"class.llvm::Argument"* %1, %"class.llvm::Argument"** %NodePtr, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Argument"* @_ZNK4llvm12ilist_traitsINS_8ArgumentEE10ensureHeadEPS1_(%"struct.llvm::ilist_traits.35"* %this, %"class.llvm::Argument"*) #0 align 2 {
entry:
  %this.addr = alloca %"struct.llvm::ilist_traits.35"*, align 8
  %.addr = alloca %"class.llvm::Argument"*, align 8
  store %"struct.llvm::ilist_traits.35"* %this, %"struct.llvm::ilist_traits.35"** %this.addr, align 8
  store %"class.llvm::Argument"* %0, %"class.llvm::Argument"** %.addr, align 8
  %this1 = load %"struct.llvm::ilist_traits.35"** %this.addr
  %call = call %"class.llvm::Argument"* @_ZNK4llvm12ilist_traitsINS_8ArgumentEE14createSentinelEv(%"struct.llvm::ilist_traits.35"* %this1)
  ret %"class.llvm::Argument"* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Argument"* @_ZNK4llvm12ilist_traitsINS_8ArgumentEE14createSentinelEv(%"struct.llvm::ilist_traits.35"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.llvm::ilist_traits.35"*, align 8
  store %"struct.llvm::ilist_traits.35"* %this, %"struct.llvm::ilist_traits.35"** %this.addr, align 8
  %this1 = load %"struct.llvm::ilist_traits.35"** %this.addr
  %Sentinel = getelementptr inbounds %"struct.llvm::ilist_traits.35"* %this1, i32 0, i32 0
  %0 = icmp eq %"class.llvm::ilist_half_node.41"* %Sentinel, null
  br i1 %0, label %cast.null, label %cast.notnull

cast.notnull:                                     ; preds = %entry
  %1 = bitcast %"class.llvm::ilist_half_node.41"* %Sentinel to i8*
  %sub.ptr = getelementptr i8* %1, i64 -40
  %2 = bitcast i8* %sub.ptr to %"class.llvm::Argument"*
  br label %cast.end

cast.null:                                        ; preds = %entry
  br label %cast.end

cast.end:                                         ; preds = %cast.null, %cast.notnull
  %3 = phi %"class.llvm::Argument"* [ %2, %cast.notnull ], [ null, %cast.null ]
  ret %"class.llvm::Argument"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK4llvm8Function16hasLazyArgumentsEv(%"class.llvm::Function"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Function"*, align 8
  store %"class.llvm::Function"* %this, %"class.llvm::Function"** %this.addr, align 8
  %this1 = load %"class.llvm::Function"** %this.addr
  %0 = bitcast %"class.llvm::Function"* %this1 to %"class.llvm::Value"*
  %call = call zeroext i16 @_ZNK4llvm5Value24getSubclassDataFromValueEv(%"class.llvm::Value"* %0)
  %conv = zext i16 %call to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

declare void @_ZNK4llvm8Function18BuildLazyArgumentsEv(%"class.llvm::Function"*) #1

declare %"class.llvm::Constant"* @_ZN4llvm12ConstantExpr16getGetElementPtrEPNS_8ConstantENS_8ArrayRefIPNS_5ValueEEEb(%"class.llvm::Constant"*, %"class.llvm::Value"**, i64, i1 zeroext) #1

; Function Attrs: uwtable
define linkonce_odr { %"class.llvm::Value"**, i64 } @_ZN4llvm12makeArrayRefIPNS_5ValueEEENS_8ArrayRefIT_EEPKS4_m(%"class.llvm::Value"** %data, i64 %length) #0 {
entry:
  %retval = alloca %"class.llvm::ArrayRef.77", align 8
  %data.addr = alloca %"class.llvm::Value"**, align 8
  %length.addr = alloca i64, align 8
  store %"class.llvm::Value"** %data, %"class.llvm::Value"*** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load %"class.llvm::Value"*** %data.addr, align 8
  %1 = load i64* %length.addr, align 8
  call void @_ZN4llvm8ArrayRefIPNS_5ValueEEC2EPKS2_m(%"class.llvm::ArrayRef.77"* %retval, %"class.llvm::Value"** %0, i64 %1)
  %2 = bitcast %"class.llvm::ArrayRef.77"* %retval to { %"class.llvm::Value"**, i64 }*
  %3 = load { %"class.llvm::Value"**, i64 }* %2, align 1
  ret { %"class.llvm::Value"**, i64 } %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Constant"** @_ZNK4llvm8ArrayRefIPNS_8ConstantEE4dataEv(%"class.llvm::ArrayRef.71"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ArrayRef.71"*, align 8
  store %"class.llvm::ArrayRef.71"* %this, %"class.llvm::ArrayRef.71"** %this.addr, align 8
  %this1 = load %"class.llvm::ArrayRef.71"** %this.addr
  %Data = getelementptr inbounds %"class.llvm::ArrayRef.71"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::Constant"*** %Data, align 8
  ret %"class.llvm::Constant"** %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK4llvm8ArrayRefIPNS_8ConstantEE4sizeEv(%"class.llvm::ArrayRef.71"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ArrayRef.71"*, align 8
  store %"class.llvm::ArrayRef.71"* %this, %"class.llvm::ArrayRef.71"** %this.addr, align 8
  %this1 = load %"class.llvm::ArrayRef.71"** %this.addr
  %Length = getelementptr inbounds %"class.llvm::ArrayRef.71"* %this1, i32 0, i32 1
  %0 = load i64* %Length, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4llvm8ArrayRefIPNS_5ValueEEC2EPKS2_m(%"class.llvm::ArrayRef.77"* %this, %"class.llvm::Value"** %data, i64 %length) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ArrayRef.77"*, align 8
  %data.addr = alloca %"class.llvm::Value"**, align 8
  %length.addr = alloca i64, align 8
  store %"class.llvm::ArrayRef.77"* %this, %"class.llvm::ArrayRef.77"** %this.addr, align 8
  store %"class.llvm::Value"** %data, %"class.llvm::Value"*** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %this1 = load %"class.llvm::ArrayRef.77"** %this.addr
  %Data = getelementptr inbounds %"class.llvm::ArrayRef.77"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::Value"*** %data.addr, align 8
  store %"class.llvm::Value"** %0, %"class.llvm::Value"*** %Data, align 8
  %Length = getelementptr inbounds %"class.llvm::ArrayRef.77"* %this1, i32 0, i32 1
  %1 = load i64* %length.addr, align 8
  store i64 %1, i64* %Length, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNK4llvm5APInt12needsCleanupEv(%"class.llvm::APInt"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::APInt"*, align 8
  store %"class.llvm::APInt"* %this, %"class.llvm::APInt"** %this.addr, align 8
  %this1 = load %"class.llvm::APInt"** %this.addr
  %call = call zeroext i1 @_ZNK4llvm5APInt12isSingleWordEv(%"class.llvm::APInt"* %this1)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #6

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK4llvm5APInt12isSingleWordEv(%"class.llvm::APInt"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::APInt"*, align 8
  store %"class.llvm::APInt"* %this, %"class.llvm::APInt"** %this.addr, align 8
  %this1 = load %"class.llvm::APInt"** %this.addr
  %BitWidth = getelementptr inbounds %"class.llvm::APInt"* %this1, i32 0, i32 0
  %0 = load i32* %BitWidth, align 4
  %cmp = icmp ule i32 %0, 64
  ret i1 %cmp
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm15SmallVectorImplINS_12AttributeSetEED2Ev(%"class.llvm::SmallVectorImpl"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::SmallVectorImpl"*, align 8
  store %"class.llvm::SmallVectorImpl"* %this, %"class.llvm::SmallVectorImpl"** %this.addr, align 8
  %this1 = load %"class.llvm::SmallVectorImpl"** %this.addr
  %0 = bitcast %"class.llvm::SmallVectorImpl"* %this1 to %"class.llvm::SmallVectorTemplateCommon"*
  %call = call %"class.llvm::AttributeSet"* @_ZN4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE5beginEv(%"class.llvm::SmallVectorTemplateCommon"* %0)
  %1 = bitcast %"class.llvm::SmallVectorImpl"* %this1 to %"class.llvm::SmallVectorTemplateCommon"*
  %call2 = call %"class.llvm::AttributeSet"* @_ZN4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE3endEv(%"class.llvm::SmallVectorTemplateCommon"* %1)
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_12AttributeSetELb1EE13destroy_rangeEPS1_S3_(%"class.llvm::AttributeSet"* %call, %"class.llvm::AttributeSet"* %call2)
  %2 = bitcast %"class.llvm::SmallVectorImpl"* %this1 to %"class.llvm::SmallVectorTemplateCommon"*
  %call3 = call zeroext i1 @_ZNK4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE7isSmallEv(%"class.llvm::SmallVectorTemplateCommon"* %2)
  br i1 %call3, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = bitcast %"class.llvm::SmallVectorImpl"* %this1 to %"class.llvm::SmallVectorTemplateCommon"*
  %call4 = call %"class.llvm::AttributeSet"* @_ZN4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE5beginEv(%"class.llvm::SmallVectorTemplateCommon"* %3)
  %4 = bitcast %"class.llvm::AttributeSet"* %call4 to i8*
  call void @free(i8* %4) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINS_12AttributeSetELb1EE13destroy_rangeEPS1_S3_(%"class.llvm::AttributeSet"*, %"class.llvm::AttributeSet"*) #5 align 2 {
entry:
  %.addr = alloca %"class.llvm::AttributeSet"*, align 8
  %.addr1 = alloca %"class.llvm::AttributeSet"*, align 8
  store %"class.llvm::AttributeSet"* %0, %"class.llvm::AttributeSet"** %.addr, align 8
  store %"class.llvm::AttributeSet"* %1, %"class.llvm::AttributeSet"** %.addr1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::AttributeSet"* @_ZN4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE5beginEv(%"class.llvm::SmallVectorTemplateCommon"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::SmallVectorTemplateCommon"*, align 8
  store %"class.llvm::SmallVectorTemplateCommon"* %this, %"class.llvm::SmallVectorTemplateCommon"** %this.addr, align 8
  %this1 = load %"class.llvm::SmallVectorTemplateCommon"** %this.addr
  %0 = bitcast %"class.llvm::SmallVectorTemplateCommon"* %this1 to %"class.llvm::SmallVectorBase"*
  %BeginX = getelementptr inbounds %"class.llvm::SmallVectorBase"* %0, i32 0, i32 0
  %1 = load i8** %BeginX, align 8
  %2 = bitcast i8* %1 to %"class.llvm::AttributeSet"*
  ret %"class.llvm::AttributeSet"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK4llvm25SmallVectorTemplateCommonINS_12AttributeSetEvE7isSmallEv(%"class.llvm::SmallVectorTemplateCommon"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::SmallVectorTemplateCommon"*, align 8
  store %"class.llvm::SmallVectorTemplateCommon"* %this, %"class.llvm::SmallVectorTemplateCommon"** %this.addr, align 8
  %this1 = load %"class.llvm::SmallVectorTemplateCommon"** %this.addr
  %0 = bitcast %"class.llvm::SmallVectorTemplateCommon"* %this1 to %"class.llvm::SmallVectorBase"*
  %BeginX = getelementptr inbounds %"class.llvm::SmallVectorBase"* %0, i32 0, i32 0
  %1 = load i8** %BeginX, align 8
  %FirstEl = getelementptr inbounds %"class.llvm::SmallVectorTemplateCommon"* %this1, i32 0, i32 1
  %2 = bitcast %"struct.llvm::AlignedCharArrayUnion"* %FirstEl to i8*
  %cmp = icmp eq i8* %1, %2
  ret i1 %cmp
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(%"class.std::map"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %this1 = load %"class.std::map"** %this.addr
  %_M_t = getelementptr inbounds %"class.std::map"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(%"class.std::_Rb_tree"* %_M_t)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(%"class.std::_Rb_tree"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %call = invoke %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(%"class.std::_Rb_tree"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %call)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb0EED2Ev(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %_M_impl) #7
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %0 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot
  %_M_impl3 = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb0EED2Ev(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %_M_impl3) #7
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node"* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node"* %1 to %"struct.std::_Rb_tree_node_base"*
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %2)
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %call)
  %3 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %4 = bitcast %"struct.std::_Rb_tree_node"* %3 to %"struct.std::_Rb_tree_node_base"*
  %call2 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4)
  store %"struct.std::_Rb_tree_node"* %call2, %"struct.std::_Rb_tree_node"** %__y, align 8
  %5 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %5)
  %6 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  store %"struct.std::_Rb_tree_node"* %6, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(%"class.std::_Rb_tree"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %_M_parent = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 1
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_parent, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %1
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb0EED2Ev(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %this) unnamed_addr #9 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"** %this.addr
  %0 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %this1 to %"class.std::allocator.61"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEED2Ev(%"class.std::allocator.61"* %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEED2Ev(%"class.std::allocator.61"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.61"*, align 8
  store %"class.std::allocator.61"* %this, %"class.std::allocator.61"** %this.addr, align 8
  %this1 = load %"class.std::allocator.61"** %this.addr
  %0 = bitcast %"class.std::allocator.61"* %this1 to %"class.__gnu_cxx::new_allocator.62"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEED2Ev(%"class.__gnu_cxx::new_allocator.62"* %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEED2Ev(%"class.__gnu_cxx::new_allocator.62"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.62"*, align 8
  store %"class.__gnu_cxx::new_allocator.62"* %this, %"class.__gnu_cxx::new_allocator.62"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.62"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #5 align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %_M_right = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %0, i32 0, i32 3
  %1 = load %"struct.std::_Rb_tree_node_base"** %_M_right, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node_base"* %1 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #5 align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %0, i32 0, i32 2
  %1 = load %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node_base"* %1 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %2
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %0 = load %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %0)
  %1 = load %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %1)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %temp.lvalue = alloca %"class.std::allocator.85", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  call void @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13get_allocatorEv(%"class.std::allocator.85"* sret %temp.lvalue, %"class.std::_Rb_tree"* %this1)
  %0 = bitcast %"class.std::allocator.85"* %temp.lvalue to %"class.__gnu_cxx::new_allocator.86"*
  %1 = load %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %call = invoke %"struct.std::pair.84"* @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN9__gnu_cxx13new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7destroyEPS9_(%"class.__gnu_cxx::new_allocator.86"* %0, %"struct.std::pair.84"* %call)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  call void @_ZNSaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(%"class.std::allocator.85"* %temp.lvalue) #7
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %2 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot
  call void @_ZNSaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(%"class.std::allocator.85"* %temp.lvalue) #7
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %call = call %"class.std::allocator.61"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this1)
  %0 = load %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEE10deallocateERSC_PSB_m(%"class.std::allocator.61"* %call, %"struct.std::_Rb_tree_node"* %0, i64 1)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEE10deallocateERSC_PSB_m(%"class.std::allocator.61"* %__a, %"struct.std::_Rb_tree_node"* %__p, i64 %__n) #0 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.61"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.61"* %__a, %"class.std::allocator.61"** %__a.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.61"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.61"* %0 to %"class.__gnu_cxx::new_allocator.62"*
  %2 = load %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %3 = load i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE10deallocateEPSB_m(%"class.__gnu_cxx::new_allocator.62"* %1, %"struct.std::_Rb_tree_node"* %2, i64 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.61"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %_M_impl to %"class.std::allocator.61"*
  ret %"class.std::allocator.61"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE10deallocateEPSB_m(%"class.__gnu_cxx::new_allocator.62"* %this, %"struct.std::_Rb_tree_node"* %__p, i64) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.62"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.62"* %this, %"class.__gnu_cxx::new_allocator.62"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.62"** %this.addr
  %1 = load %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node"* %1 to i8*
  call void @_ZdlPv(i8* %2) #7
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13get_allocatorEv(%"class.std::allocator.85"* noalias sret %agg.result, %"class.std::_Rb_tree"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %call = call %"class.std::allocator.61"* @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this1)
  call void @_ZNSaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ISt13_Rb_tree_nodeIS7_EEERKSaIT_E(%"class.std::allocator.85"* %agg.result, %"class.std::allocator.61"* %call) #7
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7destroyEPS9_(%"class.__gnu_cxx::new_allocator.86"* %this, %"struct.std::pair.84"* %__p) #0 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.86"*, align 8
  %__p.addr = alloca %"struct.std::pair.84"*, align 8
  store %"class.__gnu_cxx::new_allocator.86"* %this, %"class.__gnu_cxx::new_allocator.86"** %this.addr, align 8
  store %"struct.std::pair.84"* %__p, %"struct.std::pair.84"** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.86"** %this.addr
  %0 = load %"struct.std::pair.84"** %__p.addr, align 8
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(%"struct.std::pair.84"* %0)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::pair.84"* @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %this, %"struct.std::_Rb_tree_node"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_node"** %this.addr
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node"* %this1, i32 0, i32 1
  %call = call %"struct.std::pair.84"* @_ZSt11__addressofISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEPT_RS9_(%"struct.std::pair.84"* %_M_value_field)
  ret %"struct.std::pair.84"* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(%"class.std::allocator.85"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.85"*, align 8
  store %"class.std::allocator.85"* %this, %"class.std::allocator.85"** %this.addr, align 8
  %this1 = load %"class.std::allocator.85"** %this.addr
  %0 = bitcast %"class.std::allocator.85"* %this1 to %"class.__gnu_cxx::new_allocator.86"*
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EED2Ev(%"class.__gnu_cxx::new_allocator.86"* %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EED2Ev(%"class.__gnu_cxx::new_allocator.86"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.86"*, align 8
  store %"class.__gnu_cxx::new_allocator.86"* %this, %"class.__gnu_cxx::new_allocator.86"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.86"** %this.addr
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"struct.std::pair.84"* @_ZSt11__addressofISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEPT_RS9_(%"struct.std::pair.84"* %__r) #9 {
entry:
  %__r.addr = alloca %"struct.std::pair.84"*, align 8
  store %"struct.std::pair.84"* %__r, %"struct.std::pair.84"** %__r.addr, align 8
  %0 = load %"struct.std::pair.84"** %__r.addr, align 8
  %1 = bitcast %"struct.std::pair.84"* %0 to i8*
  %2 = bitcast i8* %1 to %"struct.std::pair.84"*
  ret %"struct.std::pair.84"* %2
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(%"struct.std::pair.84"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"struct.std::pair.84"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::pair.84"* %this, %"struct.std::pair.84"** %this.addr, align 8
  %this1 = load %"struct.std::pair.84"** %this.addr
  %second = getelementptr inbounds %"struct.std::pair.84"* %this1, i32 0, i32 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %second)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %first = getelementptr inbounds %"struct.std::pair.84"* %this1, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %first)
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot
  %first2 = getelementptr inbounds %"struct.std::pair.84"* %this1, i32 0, i32 0
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %first2)
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont3
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4

terminate.lpad:                                   ; preds = %lpad
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  call void @__clang_call_terminate(i8* %4) #13
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ISt13_Rb_tree_nodeIS7_EEERKSaIT_E(%"class.std::allocator.85"* %this, %"class.std::allocator.61"*) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.85"*, align 8
  %.addr = alloca %"class.std::allocator.61"*, align 8
  store %"class.std::allocator.85"* %this, %"class.std::allocator.85"** %this.addr, align 8
  store %"class.std::allocator.61"* %0, %"class.std::allocator.61"** %.addr, align 8
  %this1 = load %"class.std::allocator.85"** %this.addr
  %1 = bitcast %"class.std::allocator.85"* %this1 to %"class.__gnu_cxx::new_allocator.86"*
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEC2Ev(%"class.__gnu_cxx::new_allocator.86"* %1) #7
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.61"* @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %_M_impl to %"class.std::allocator.61"*
  ret %"class.std::allocator.61"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEC2Ev(%"class.__gnu_cxx::new_allocator.86"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.86"*, align 8
  store %"class.__gnu_cxx::new_allocator.86"* %this, %"class.__gnu_cxx::new_allocator.86"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.86"** %this.addr
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6bitsetILm38EEC2Em(%"class.std::bitset"* %this, i64 %__val) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::bitset"*, align 8
  %__val.addr = alloca i64, align 8
  store %"class.std::bitset"* %this, %"class.std::bitset"** %this.addr, align 8
  store i64 %__val, i64* %__val.addr, align 8
  %this1 = load %"class.std::bitset"** %this.addr
  %0 = bitcast %"class.std::bitset"* %this1 to %"struct.std::_Base_bitset"*
  %1 = load i64* %__val.addr, align 8
  call void @_ZNSt12_Base_bitsetILm1EEC2Em(%"struct.std::_Base_bitset"* %0, i64 %1)
  call void @_ZNSt6bitsetILm38EE14_M_do_sanitizeEv(%"class.std::bitset"* %this1)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2Ev(%"class.std::map"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %this1 = load %"class.std::map"** %this.addr
  %_M_t = getelementptr inbounds %"class.std::map"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2Ev(%"class.std::_Rb_tree"* %_M_t)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2Ev(%"class.std::_Rb_tree"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb0EEC2Ev(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %_M_impl)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb0EEC2Ev(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"** %this.addr
  %0 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %this1 to %"class.std::allocator.61"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEC2Ev(%"class.std::allocator.61"* %0) #7
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %_M_header to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 32, i32 8, i1 false)
  %_M_node_count = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %this1, i32 0, i32 2
  store i64 0, i64* %_M_node_count, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb0EE13_M_initializeEv(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot
  %5 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %this1 to %"class.std::allocator.61"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEED2Ev(%"class.std::allocator.61"* %5) #7
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEC2Ev(%"class.std::allocator.61"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.61"*, align 8
  store %"class.std::allocator.61"* %this, %"class.std::allocator.61"** %this.addr, align 8
  %this1 = load %"class.std::allocator.61"** %this.addr
  %0 = bitcast %"class.std::allocator.61"* %this1 to %"class.__gnu_cxx::new_allocator.62"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEC2Ev(%"class.__gnu_cxx::new_allocator.62"* %0) #7
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb0EE13_M_initializeEv(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"** %this.addr
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_color = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 0
  store i32 0, i32* %_M_color, align 4
  %_M_header2 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_parent = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header2, i32 0, i32 1
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %_M_parent, align 8
  %_M_header3 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_header4 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header4, i32 0, i32 2
  store %"struct.std::_Rb_tree_node_base"* %_M_header3, %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  %_M_header5 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_header6 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_right = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header6, i32 0, i32 3
  store %"struct.std::_Rb_tree_node_base"* %_M_header5, %"struct.std::_Rb_tree_node_base"** %_M_right, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEC2Ev(%"class.__gnu_cxx::new_allocator.62"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.62"*, align 8
  store %"class.__gnu_cxx::new_allocator.62"* %this, %"class.__gnu_cxx::new_allocator.62"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.62"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Base_bitsetILm1EEC2Em(%"struct.std::_Base_bitset"* %this, i64 %__val) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Base_bitset"*, align 8
  %__val.addr = alloca i64, align 8
  store %"struct.std::_Base_bitset"* %this, %"struct.std::_Base_bitset"** %this.addr, align 8
  store i64 %__val, i64* %__val.addr, align 8
  %this1 = load %"struct.std::_Base_bitset"** %this.addr
  %_M_w = getelementptr inbounds %"struct.std::_Base_bitset"* %this1, i32 0, i32 0
  %0 = load i64* %__val.addr, align 8
  store i64 %0, i64* %_M_w, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6bitsetILm38EE14_M_do_sanitizeEv(%"class.std::bitset"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::bitset"*, align 8
  store %"class.std::bitset"* %this, %"class.std::bitset"** %this.addr, align 8
  %this1 = load %"class.std::bitset"** %this.addr
  %0 = bitcast %"class.std::bitset"* %this1 to %"struct.std::_Base_bitset"*
  %call = call i64* @_ZNSt12_Base_bitsetILm1EE9_M_hiwordEv(%"struct.std::_Base_bitset"* %0)
  call void @_ZNSt9_SanitizeILm38EE14_S_do_sanitizeERm(i64* %call)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt9_SanitizeILm38EE14_S_do_sanitizeERm(i64* %__val) #5 align 2 {
entry:
  %__val.addr = alloca i64*, align 8
  store i64* %__val, i64** %__val.addr, align 8
  %0 = load i64** %__val.addr, align 8
  %1 = load i64* %0, align 8
  %and = and i64 %1, 274877906943
  store i64 %and, i64* %0, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZNSt12_Base_bitsetILm1EE9_M_hiwordEv(%"struct.std::_Base_bitset"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Base_bitset"*, align 8
  store %"struct.std::_Base_bitset"* %this, %"struct.std::_Base_bitset"** %this.addr, align 8
  %this1 = load %"struct.std::_Base_bitset"** %this.addr
  %_M_w = getelementptr inbounds %"struct.std::_Base_bitset"* %this1, i32 0, i32 0
  ret i64* %_M_w
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4llvm8Function20setValueSubclassDataEt(%"class.llvm::Function"* %this, i16 zeroext %D) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Function"*, align 8
  %D.addr = alloca i16, align 2
  store %"class.llvm::Function"* %this, %"class.llvm::Function"** %this.addr, align 8
  store i16 %D, i16* %D.addr, align 2
  %this1 = load %"class.llvm::Function"** %this.addr
  %0 = bitcast %"class.llvm::Function"* %this1 to %"class.llvm::Value"*
  %1 = load i16* %D.addr, align 2
  call void @_ZN4llvm5Value20setValueSubclassDataEt(%"class.llvm::Value"* %0, i16 zeroext %1)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNK4llvm5Twine7isValidEv(%"class.llvm::Twine"* %this) #0 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %"class.llvm::Twine"*, align 8
  store %"class.llvm::Twine"* %this, %"class.llvm::Twine"** %this.addr, align 8
  %this1 = load %"class.llvm::Twine"** %this.addr
  %call = call zeroext i1 @_ZNK4llvm5Twine9isNullaryEv(%"class.llvm::Twine"* %this1)
  br i1 %call, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @_ZNK4llvm5Twine10getRHSKindEv(%"class.llvm::Twine"* %this1)
  %cmp = icmp ne i32 %call2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = call i32 @_ZNK4llvm5Twine10getRHSKindEv(%"class.llvm::Twine"* %this1)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i1 false, i1* %retval
  br label %return

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @_ZNK4llvm5Twine10getRHSKindEv(%"class.llvm::Twine"* %this1)
  %cmp8 = icmp ne i32 %call7, 1
  br i1 %cmp8, label %land.lhs.true9, label %if.end13

land.lhs.true9:                                   ; preds = %if.end6
  %call10 = call i32 @_ZNK4llvm5Twine10getLHSKindEv(%"class.llvm::Twine"* %this1)
  %cmp11 = icmp eq i32 %call10, 1
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true9
  store i1 false, i1* %retval
  br label %return

if.end13:                                         ; preds = %land.lhs.true9, %if.end6
  %call14 = call i32 @_ZNK4llvm5Twine10getLHSKindEv(%"class.llvm::Twine"* %this1)
  %cmp15 = icmp eq i32 %call14, 2
  br i1 %cmp15, label %land.lhs.true16, label %if.end19

land.lhs.true16:                                  ; preds = %if.end13
  %LHS = getelementptr inbounds %"class.llvm::Twine"* %this1, i32 0, i32 0
  %twine = bitcast %"union.llvm::Twine::Child"* %LHS to %"class.llvm::Twine"**
  %0 = load %"class.llvm::Twine"** %twine, align 8
  %call17 = call zeroext i1 @_ZNK4llvm5Twine8isBinaryEv(%"class.llvm::Twine"* %0)
  br i1 %call17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %land.lhs.true16
  store i1 false, i1* %retval
  br label %return

if.end19:                                         ; preds = %land.lhs.true16, %if.end13
  %call20 = call i32 @_ZNK4llvm5Twine10getRHSKindEv(%"class.llvm::Twine"* %this1)
  %cmp21 = icmp eq i32 %call20, 2
  br i1 %cmp21, label %land.lhs.true22, label %if.end26

land.lhs.true22:                                  ; preds = %if.end19
  %RHS = getelementptr inbounds %"class.llvm::Twine"* %this1, i32 0, i32 1
  %twine23 = bitcast %"union.llvm::Twine::Child"* %RHS to %"class.llvm::Twine"**
  %1 = load %"class.llvm::Twine"** %twine23, align 8
  %call24 = call zeroext i1 @_ZNK4llvm5Twine8isBinaryEv(%"class.llvm::Twine"* %1)
  br i1 %call24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %land.lhs.true22
  store i1 false, i1* %retval
  br label %return

if.end26:                                         ; preds = %land.lhs.true22, %if.end19
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end26, %if.then25, %if.then18, %if.then12, %if.then5, %if.then
  %2 = load i1* %retval
  ret i1 %2
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNK4llvm5Twine9isNullaryEv(%"class.llvm::Twine"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Twine"*, align 8
  store %"class.llvm::Twine"* %this, %"class.llvm::Twine"** %this.addr, align 8
  %this1 = load %"class.llvm::Twine"** %this.addr
  %call = call zeroext i1 @_ZNK4llvm5Twine6isNullEv(%"class.llvm::Twine"* %this1)
  br i1 %call, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %call2 = call zeroext i1 @_ZNK4llvm5Twine7isEmptyEv(%"class.llvm::Twine"* %this1)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i1 [ true, %entry ], [ %call2, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZNK4llvm5Twine10getRHSKindEv(%"class.llvm::Twine"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Twine"*, align 8
  store %"class.llvm::Twine"* %this, %"class.llvm::Twine"** %this.addr, align 8
  %this1 = load %"class.llvm::Twine"** %this.addr
  %RHSKind = getelementptr inbounds %"class.llvm::Twine"* %this1, i32 0, i32 3
  %0 = load i8* %RHSKind, align 1
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZNK4llvm5Twine10getLHSKindEv(%"class.llvm::Twine"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Twine"*, align 8
  store %"class.llvm::Twine"* %this, %"class.llvm::Twine"** %this.addr, align 8
  %this1 = load %"class.llvm::Twine"** %this.addr
  %LHSKind = getelementptr inbounds %"class.llvm::Twine"* %this1, i32 0, i32 2
  %0 = load i8* %LHSKind, align 1
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNK4llvm5Twine8isBinaryEv(%"class.llvm::Twine"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Twine"*, align 8
  store %"class.llvm::Twine"* %this, %"class.llvm::Twine"** %this.addr, align 8
  %this1 = load %"class.llvm::Twine"** %this.addr
  %call = call i32 @_ZNK4llvm5Twine10getLHSKindEv(%"class.llvm::Twine"* %this1)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call2 = call i32 @_ZNK4llvm5Twine10getRHSKindEv(%"class.llvm::Twine"* %this1)
  %cmp3 = icmp ne i32 %call2, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  ret i1 %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK4llvm5Twine6isNullEv(%"class.llvm::Twine"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Twine"*, align 8
  store %"class.llvm::Twine"* %this, %"class.llvm::Twine"** %this.addr, align 8
  %this1 = load %"class.llvm::Twine"** %this.addr
  %call = call i32 @_ZNK4llvm5Twine10getLHSKindEv(%"class.llvm::Twine"* %this1)
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK4llvm5Twine7isEmptyEv(%"class.llvm::Twine"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Twine"*, align 8
  store %"class.llvm::Twine"* %this, %"class.llvm::Twine"** %this.addr, align 8
  %this1 = load %"class.llvm::Twine"** %this.addr
  %call = call i32 @_ZNK4llvm5Twine10getLHSKindEv(%"class.llvm::Twine"* %this1)
  %cmp = icmp eq i32 %call, 1
  ret i1 %cmp
}

declare void @_ZN4llvm8FunctionC1EPNS_12FunctionTypeENS_11GlobalValue12LinkageTypesERKNS_5TwineEPNS_6ModuleE(%"class.llvm::Function"*, %"class.llvm::FunctionType"*, i32, %"class.llvm::Twine"*, %"class.llvm::Module"*) #1

declare %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"*) #1

; Function Attrs: uwtable
define linkonce_odr void @_ZNK4llvm9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %"class.llvm::StringRef"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::StringRef"*, align 8
  store %"class.llvm::StringRef"* %this, %"class.llvm::StringRef"** %this.addr, align 8
  %this1 = load %"class.llvm::StringRef"** %this.addr
  call void @_ZNK4llvm9StringRef3strEv(%"class.std::__cxx11::basic_string"* sret %agg.result, %"class.llvm::StringRef"* %this1)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNK4llvm9StringRef3strEv(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %"class.llvm::StringRef"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::StringRef"*, align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.llvm::StringRef"* %this, %"class.llvm::StringRef"** %this.addr, align 8
  %this1 = load %"class.llvm::StringRef"** %this.addr
  %Data = getelementptr inbounds %"class.llvm::StringRef"* %this1, i32 0, i32 0
  %0 = load i8** %Data, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* %agg.result)
  br label %return

if.end:                                           ; preds = %entry
  %Data2 = getelementptr inbounds %"class.llvm::StringRef"* %this1, i32 0, i32 0
  %1 = load i8** %Data2, align 8
  %Length = getelementptr inbounds %"class.llvm::StringRef"* %this1, i32 0, i32 1
  %2 = load i64* %Length, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp) #7
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcmRKS3_(%"class.std::__cxx11::basic_string"* %agg.result, i8* %1, i64 %2, %"class.std::allocator"* %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp) #7
  br label %return

lpad:                                             ; preds = %if.end
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp) #7
  br label %eh.resume

return:                                           ; preds = %invoke.cont, %if.then
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"*) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcmRKS3_(%"class.std::__cxx11::basic_string"*, i8*, i64, %"class.std::allocator"*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #12

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline noreturn nounwind }
attributes #4 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { inlinehint uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind readonly }
attributes #17 = { noreturn }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
