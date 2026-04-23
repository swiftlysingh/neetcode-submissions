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
    func countUnivalSubtrees(_ root: TreeNode?) -> Int {
        var count = 0


        func dfs(_ node: TreeNode?) -> Bool {
            guard let node = node else {return true}

            if node.left == nil && node.right == nil {
                count += 1
                return true
            }

            var left = dfs(node.left)
            var right = dfs(node.right)

            if node.val == node.left?.val ?? node.val && node.val == node.right?.val ?? node.val && left && right {
                count += 1
                return true
            } 

            return false
            

        }


        _ = dfs(root)

        return count
    }
}
