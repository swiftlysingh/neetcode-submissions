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
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        var count = k
        var ans = -1
        
        func inorder(_ root: TreeNode?) {
            guard let root = root else { return }
            

            inorder(root.left)
            count -= 1

            if count == 0 {
                ans = root.val
            }

            inorder(root.right)
        }

        inorder(root)

        return ans
    }
}
