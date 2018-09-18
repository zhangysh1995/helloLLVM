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

using namespace llvm;

namespace {
    struct Hello : public FunctionPass {
        static char ID;
        Hello() : FunctionPass(ID) {}

        bool runOnFunction(Function &F) override {
            errs() << "Hello: ";
            errs().write_escaped(F.getName()) << '\n';
            return false;
        }

	bool getInfo(Function &F) {
		return true;
	}
    };
}




char Hello::ID = 0;

static RegisterPass<Hello> Hello("hello", "Hello World Pass", false, false);

namespace {
    struct CGT : public ModulePass {
        static char ID;
        CGT() : ModulePass(ID) {}
	
	void getAnalysisUsage(AnalysisUsage &AU) const {
		AU.setPreservesCFG();
  		AU.addRequired<Hello>();
	}

        bool runOnModule(Module &M) override {
            // construct call graph
            CallGraph cg = CallGraph(M);
            errs() << "===== CallGraph dump =====\n";
            cg.dump();

            Module::iterator it = M.begin();

            // module is composed of functions
            for ( ; it != M.end(); it++) {

                CallGraphNode *cgn = cg[it];
                errs() << "===== CallGraphNode dump ===== \n";
                cgn->dump();

                // functions contain basic blocks
                for (Function::iterator j = it->begin(); j != it->end(); j++) {
                    errs() << "Basic block (name=" << j->getName() << ") has "
                           << j->size() << " instructions.\n";

                    // instructions are in basic block
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

char CGT::ID = 0;
static RegisterPass<CGT> CGT("cgt", "Test call graph", false, false);

