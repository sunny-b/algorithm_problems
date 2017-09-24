// Maximum depth of binary tree
// Given a binary tree, find its maximum depth.
// The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */

function maxDepth = function(root) {
  if (root === null) return 0;

  const left = maxDepth(root.left);
  const right = maxDepth(root.right);

  let max = Math.max(left, right) + 1;
  return max;
}
