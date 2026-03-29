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
    func isBalanced(_ root: TreeNode?) -> Bool {
        return height(root) != -1
    }

    func height(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }

        let left = height(root.left)
        if left == -1 { return -1 }

        let right = height(root.right)
        if right == -1 { return -1}

        if abs(left-right) > 1 { return -1 }

        return max(left,right) + 1
    }
}
