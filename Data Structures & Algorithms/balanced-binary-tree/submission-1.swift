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
        guard let root = root else { return true }

        let leftB = isBalanced(root.left)
        let rightB = isBalanced(root.right)
        let left = height(root.left)
        let right = height(root.right)

        return leftB && rightB && (abs(left - right) < 2 )
        
    }

    func height(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }

        return max(height(root.left),height(root.right)) + 1
    }
}
