#include "llvm/Pass.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"


using namespace llvm;

//namespace {
//    struct Hello : public FunctionPass {
//        static char ID;
//        Hello() : FunctionPass(ID) {}
//
//        bool runOnFunction(Function &F) override {
//            errs() << "Hello: ";
//            errs().write_escaped(F.getName()) << '\n';
//            return false;
//        }
//    };
//}

namespace {
    struct Hello : public ModulePass {
        static char ID;
        Hello() : ModulePass(ID) {}

        bool runOnModule(Module &M) override {
            Module::iterator it = M.begin();
            for ( ; it != M.end(); it++) {
                for (Function::iterator j = it->begin(); j != it->end(); j++) {
                    errs() << "Basic block (name=" << j->getName() << ") has "
                           << j->size() << " instructions.\n";
                    for (BasicBlock::iterator k = j->begin(); k != j->end(); k++) {
                        errs() << "i: ";
                        errs() << *k  << '\n';
                    }
                }

            }

            return false;
        }
    };
}

char Hello::ID = 0;
static RegisterPass<Hello> X("hello", "Hello World Pass", false, false);