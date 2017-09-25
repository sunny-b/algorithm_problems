// Symmetric Tree
// Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).
// For example, this binary tree [1,2,2,3,4,4,3] is symmetric:

/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */


// recursive

function isSymmetric(root, other = root) {
  if (root === null && other === null) {
    return true;
  } else if (root === null || other === null) {
    return false;
  }

  if (root.val === other.val) {
    return isSymmetric(root.left, other.right) && isSymmetric(root.right, other.left);
  } else {
    return false;
  }
}


// iterative w/ stack

function isSymmetric(root) {
  if (root === null) return true;

  const queue = [root];
  let currentNode;

  while (queue.length !== 0) {
    if (!isPalindrome(queue)) {
      return false; 
    }

    for (let i = 0; let j = queue.length; i < j; i++) {
      currentNode = queue.shift();

      if (!currentNode) continue;

      queue.push(currentNode.left);
      queue.push(currentNode.right);
    }
  }

  return true;
}

function isPalindrome(queue) {
  let left = 0;
  let right = queue.length - 1;

  while (left < right) {
    if (queue[left].val !== queue[right].val) return false;

    left++;
    right--;
  }

  return true;
}
