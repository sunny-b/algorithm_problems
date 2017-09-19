def inorder_successor(head, target, storage = {prev: nil, successor: nil})
  return if head.nil?

  inorder_successor(head.left, target, storage)
  storage[:successor] = head if storage[:prev] == target

  storage[:prev] = head
  inorder_successor(head.right, target, storage)

  storage[:successor]
end

# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end

    def to_preorder_array(root = self)
      return [] unless root

      array = [root.val]
      left = to_preorder_array(root.left)
      right = to_preorder_array(root.right)
      array.concat(left).concat(right)
    end
end

# Problem 1

node1 = TreeNode.new(30)
node2 = TreeNode.new(20)
node3 = TreeNode.new(10)


# invalid
node1.left = node2
node2.left = node3


# Problem 2

node4 = TreeNode.new(4)
node5 = TreeNode.new(3)
node6 = TreeNode.new(2)
node7 = TreeNode.new(1)

node4.left = node5
node5.left = node6
node6.left = node7

inorder_successor(node4, node7) == node6


# Problem 3

node_1 = TreeNode.new(1)
node_2 = TreeNode.new(2)
node_3 = TreeNode.new(3)
node_4 = TreeNode.new(4)
node_5 = TreeNode.new(5)
node_6 = TreeNode.new(6)
node_7 = TreeNode.new(7)

node_4.left = node_3
node_4.right = node_5
node_3.left = node_2
node_2.left = node_1
node_5.right = node_6
node_6.right = node_7

inorder_successor(node_4, node_4) == node_5
