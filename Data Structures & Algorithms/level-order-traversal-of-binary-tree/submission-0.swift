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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }

        var queue = [TreeNode]()

        queue.append(root)

        var ans = [[Int]]()

        while !queue.isEmpty {
            var tempAns = [Int]()
            for i in 0..<queue.count {
                let node = queue.removeFirst()
                tempAns.append(node.val)

                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
            ans.append(tempAns)
        }
        return ans
    }
}
