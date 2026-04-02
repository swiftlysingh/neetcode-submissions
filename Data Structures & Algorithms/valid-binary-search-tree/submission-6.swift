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

        func checkBSRT(_ root: TreeNode?, _ maxVal: Int, _ minVal: Int) -> Bool {
            guard let root = root else { return true }
            
            if root.val >= maxVal || root.val <= minVal {
                return false
            }

            var left = checkBSRT(root.left, root.val, minVal)
            var right = checkBSRT(root.right, maxVal, root.val)

            return left && right
        }

        return checkBSRT(root,Int.max,Int.min)
    }
}
