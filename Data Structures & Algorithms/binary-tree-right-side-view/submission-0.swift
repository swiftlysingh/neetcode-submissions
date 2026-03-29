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
        guard let root = root else { return [] }

        var queue = [TreeNode]()

        queue.append(root)
        
        var right = [Int]() 
        
        while !queue.isEmpty {
            let size = queue.count
            for i in 0..<size {
                let node = queue.removeFirst()

                if i == size - 1 {
                    right.append(node.val)
                }
                if node.left != nil {
                    queue.append(node.left!)
                } 

                if node.right != nil {
                    queue.append(node.right!)
                }
            }
        }

        return right
    }
}
