/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        if preorder.isEmpty {
            return nil
        }

        var rootVal = preorder[0]

        var i = 0

        while rootVal != inorder[i] {
            i += 1
        }

        var left = i > 0 ? buildTree(Array(preorder[1...i]), Array(inorder[0..<i])) : nil
        var right = i + 1 < preorder.count ? buildTree(Array(preorder[i+1..<preorder.count]),Array(inorder[i+1..<inorder.count])) : nil

        var root = TreeNode(rootVal)
        root.left = left
        root.right = right

        return root
    }
}
