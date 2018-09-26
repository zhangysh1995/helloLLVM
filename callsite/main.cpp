/*
 * main.cpp
 *
 *  Created on: 24 Sep 2018
 *      Author: zhangysh1995
 */

#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instruction.h"
#include "llvm/Support/raw_ostream.h"

#include "string.h"

//#include "main.h"

#include "lib/Callsite.h"

using std::string;

namespace {
	struct test:llvm::ModulePass {
		static char ID;
        test() : ModulePass(ID) {}

		bool runOnModule (llvm::Module &M) override {
			CallSite *callsite = new CallSite(M);
			callsite->construct_cg(M);
			return true;
		}
	};

}

char test::ID = 0;
static llvm::RegisterPass<test> test("callsite", "Get call information", false, false);
