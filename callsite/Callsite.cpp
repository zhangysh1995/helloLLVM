/*
 * callsite.cpp
 *
 *  Created on: 24 Sep 2018
 *      Author: zhangysh1995
 */

#include "Tree.h"
#include "Callsite.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instruction.h"
#include "llvm/Analysis/CallGraph.h"
#include "llvm/Support/raw_ostream.h"

#include <string.h>
using std::string;

/**
 * constructor
 */
CallSite::CallSite(llvm::Module &M) {
	callGraph = TreeNode<llvm::Function *>::getTN();
	llvmCG = new llvm::CallGraph(M);
}

/**
 * return call graph
 */
TreeNode<llvm::Function *>* CallSite::getCallGraph() {
	return callGraph;
}

/**
 * loop a function under analysis
 */
void CallSite::loopFunction(llvm::Function &F) {
//	TreeNode<llvm::Function *> *callTree =
//			TreeNode<llvm::Function*>::getTN();
//	callTree->insertData(&F);
//
//	TreeNode<llvm::Function *> *next =
//			TreeNode<llvm::Function*>::getTN();
//	callTree->insertChild(next);
//
//	llvm::errs() << F.getName();

	for(llvm::Function::iterator fi = F.begin(), fj = F.end();
		fi != fj; fi ++) {

		for(llvm::BasicBlock::iterator bi = fi->begin(), bj = fi->end();
			bi != bj; bi++){

				if(!strcmp(bi->getOpcodeName(),"call")) {
					llvm::errs() << bi->getName() << "\n";
				}

		}
	}
}

/**
 * construct call graph
 */
void CallSite::construct_cg(llvm::Module &M) {
//	llvm::errs() << "test \n";
	for(llvm::Module::iterator i = M.begin(), j = M.end(); i != j; i++) {
		loopFunction(*i);
	}
}
