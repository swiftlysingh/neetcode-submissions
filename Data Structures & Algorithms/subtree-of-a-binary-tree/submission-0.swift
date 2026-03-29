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
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        guard let root = root else { return subRoot == nil }
        if isSameTree(root,subRoot) {
            return true
        }

        let left = isSubtree(root.left,subRoot)
        let right = isSubtree(root.right,subRoot)

        return left || right
    }

    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
         if p?.val != q?.val  { return false }
        
        guard let left = p, let right = q else { return true}


        let isLeftSame = isSameTree(left.left,right.left)
        let isRightSame = isSameTree(left.right,right.right)

        return isLeftSame && isRightSame
    }
}
