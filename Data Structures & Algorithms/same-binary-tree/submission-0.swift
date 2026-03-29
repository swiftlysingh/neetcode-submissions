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
        
        if p?.val != q?.val  { return false }
        
        guard let left = p, let right = q else { return true}


        var isLeftSame = isSameTree(left.left,right.left)
        var isRightSame = isSameTree(left.right,right.right)

        return isLeftSame && isRightSame
    }
}
