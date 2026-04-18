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
    func rightSideView(_ root: TreeNode?) -> [Int] {

        guard let root = root else { return [Int]()}
        var queue = [TreeNode]()
        var ans = [Int]()
        queue.append(root)

        while !queue.isEmpty {
            let count = queue.count

            for i in 0..<count {
                let node = queue.removeFirst()

                if i == count-1 {
                    ans.append(node.val)
                } 

                if node.left != nil {
                    queue.append(node.left!)
                }

                if node.right != nil {
                    queue.append(node.right!)
                }
            }
        }

        return ans
    }
}
