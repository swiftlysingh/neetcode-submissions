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

    func goodNodes(_ root: TreeNode?) -> Int {
        return checkNotes(root,Int.min)
    }

    func checkNotes(_ root:TreeNode?, _ maxSoFar: Int) -> Int {
        guard let root = root else { return 0 }

        let curr = root.val >= maxSoFar ? 1 : 0
        let newMax = max(root.val,maxSoFar)

        return curr + checkNotes(root.left,newMax) + checkNotes(root.right,newMax)
    }
}
