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
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
            guard let root = root else { return false }

            var remain = targetSum - root.val

            if remain == 0 && root.left == nil && root.right == nil {
                return true
            }

            if hasPathSum(root.left, remain) {
                return true
            }

            if hasPathSum(root.right, remain) {
                return true
            }

            return false
    }
}
