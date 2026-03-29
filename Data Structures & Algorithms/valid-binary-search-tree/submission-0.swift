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
    func isValidBST(_ root: TreeNode?) -> Bool {
        return validate(root,Int.min,Int.max)
    }

    func validate(_ root: TreeNode?, _ low: Int, _ high: Int) -> Bool {
        guard let root = root else { return true }

        if root.val <= low || root.val >= high {
            return false
        }

        return validate(root.left, low,root.val) && validate(root.right, root.val,high)
    }
}
