//
// Created by zhangysh1995 on 9/18/18.
//

#include "llvm/Pass.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"

#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/CallGraph.h"
//#include "../fcp/fcp.h"

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

    char FCP::ID = 100;
    static RegisterPass<FCP> FCP("fcp", "FCP", false, true);

namespace {
    struct CGT : public ModulePass {
        static char ID;
        CGT() : ModulePass(ID) {}
	
        virtual void getAnalysisUsage(AnalysisUsage &AU) const{
        	AU.addRequired<FCP>();
        }


        bool runOnFunction(Function &F) {
        	errs () << "run here!";
        	FCP* fcp = &getAnalysis<FCP>(F);
        }


        bool runOnModule(Module &M) override {
            // construct call graph
            CallGraph cg = CallGraph(M);
//            errs() << "===== CallGraph dump =====\n";
//            cg.dump();

            Module::iterator it = M.begin();

            // module is composed of functions
            for ( ; it != M.end(); it++) {
//            	runOnFunction(*it);

                CallGraphNode *cgn = cg[it];
//                errs() << "===== CallGraphNode dump ===== \n";
//                cgn->dump();

                // functions contain basic blocks
                for (Function::iterator j = it->begin(); j != it->end(); j++) {
//                    errs() << "Basic block (name=" << j->getName() << ") has "
//                           << j->size() << " instructions.\n";

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

