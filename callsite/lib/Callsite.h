/*
 * callsite.h
 *
 *  Created on: 24 Sep 2018
 *      Author: zhangysh1995
 */

#ifndef CALLSITE_CALLSITE_H_
#define CALLSITE_CALLSITE_H_

#include "Tree.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Analysis/CallGraph.h"

class CallSite{

public:
	CallSite(llvm::Module & M);
	bool runOnModuleDelegate(const llvm::Module &M);
	void loopFunction(llvm::Function &F);
	void construct_cg(llvm::Module &M);
	void find_func();

	TreeNode<llvm::Function *> *getCallGraph();

private:
	TreeNode<llvm::Function *> *callGraph;
	llvm::CallGraph *llvmCG;

	bool isCall(llvm::Function &F);
};




#endif /* CALLSITE_CALLSITE_H_ */
