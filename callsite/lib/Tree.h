// https://stackoverflow.com/a/15230597/6829195

#ifndef CALLSITE_TREE_H_
#define CALLSITE_TREE_H_

#include <vector>

template <typename T>
struct TreeNode {
    T data;
    TreeNode<T> *parent;
    std::vector<TreeNode<T> *> *children;

    TreeNode<T>(){
    	children = new std::vector<TreeNode<T> *>();
    	parent = nullptr;
    }
    /**
     * Insert data to this node.
     */
    void insertData(T Data) {
    	if(Data == nullptr)
    		data = Data;
    }

    /**
     * Insert a child to this node.
     */
    void insertChild(TreeNode<T>* child) {
    	this->setParent(child);
    	children->push_back(child);
    }

    /**
     * Set parent node
     */
    void setParent(TreeNode<T>* child) {
    	child->parent = this;
    }

    /**
     * Get a pointer to new node.
     */
    static TreeNode<T>* getTN() {
    	return new TreeNode<T>;
    }
};

#endif /* CALLSITE_TREE_H_ */
