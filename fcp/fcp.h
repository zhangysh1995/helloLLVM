//
// Created by zhangysh1995 on 9/18/18.
//

#include "llvm/Pass.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"

#include "llvm/Analysis/CallGraphSCCPass.h"
#include "llvm/Analysis/CallGraph.h"


#include <string.h>

using namespace llvm;
using std::string;

namespace {
    struct FCP : public FunctionPass {
        static char ID;
        FCP() : FunctionPass(ID) {}

        bool runOnFunction(Function &F) override {
            errs() << "Hello: ";
            errs().write_escaped(F.getName()) << '\n';
            return true;
        }
//
//        string getInfo() {
//        	return "called on function";
//        }


        bool getInfo(Function &F) {
        	errs() << "called on function: " << F.getName() ;
        	return true;
        }
    };

}
