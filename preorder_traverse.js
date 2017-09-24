// Binary Tree Preorder Traversal
// Given a binary tree, return the preorder traversal of its nodes' values.
// For example:
// Given binary tree {1,#,2,3}
//   1
//    \
//     2
//    /
//   3
// return [1, 2, 3]

/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */
/**

// Recursive solution
// function preorderTraversal(root) {
//  if (root === null) return [];

//  const val = [root.val];
//  const left = preorderTraversal(root.left);
//  const right = preorderTraversal(root.right);

//  return val.concat(left).concat(right);
// }


// Iterative Solution w/ stack
function preorderTraversal(root) {
  if (root === null) return [];

  const stack = [root];
  const traversedNodes = [];
  let currentNode;

  while (stack.length !== 0) {
    currentNode = stack.pop();
    
    if (currentNode.right !== null) stack.push(currentNode.right);
    if (currentNode.left !== null) stack.push(currentNode.left);

    traversedNodes.push(currentNode.val);
  }

  return traversedNodes;
}
