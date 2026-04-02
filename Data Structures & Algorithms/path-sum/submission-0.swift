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

        var newTarget = targetSum - root.val
        
        if root.left == nil && root.right == nil {
            return newTarget == 0
        }

        if hasPathSum(root.left,newTarget) || hasPathSum(root.right,newTarget) {
            return true
        } 
        
        return false
    }
}
