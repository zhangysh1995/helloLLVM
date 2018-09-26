/*
 * callsite.h
 *
 *  Created on: 24 Sep 2018
 *      Author: zhangysh1995
 */

#ifndef CALLSITE_CALLSITE_H_
#define CALLSITE_CALLSITE_H_

#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"

#include <vector>


class CallSite{

public:
	CallSite() {};

	bool runOnModuleDelegate(const llvm::Module &M);
	void construct_cg(llvm::Module &M);
	void add_func(std::vector<llvm::Function *> *pg, const llvm::Function *f);
	void insert_func(std::vector<llvm::Function*> *pg, const llvm::Function *f);
	void rm_func(llvm::Function *f);
	void find_func();

	std::vector<llvm::Function *> getCallGraph();

private:
	std::vector<llvm::Function *> *callGraph;
};




#endif /* CALLSITE_CALLSITE_H_ */
