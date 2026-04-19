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
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q != nil || q == nil && p != nil { 
            return false 
        }

        guard let p = p, let q = q else { return true }

        var left = isSameTree(p.left,q.left)
        var right = isSameTree(p.right,q.right)

        return left && right && p.val == q.val ? true : false
    }
}
