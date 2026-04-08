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

        func heightCheck(_ root: TreeNode?) -> Int {
            guard let root = root else { return 0}

            var left = heightCheck(root.left)
            var right = heightCheck(root.right)

            if left < 0 || right < 0 {
                return -1
            }

            if abs(left-right) > 1 { 
                return -1
            }

            return max(left,right) + 1

        }

        return heightCheck(root) != -1
    }
}
