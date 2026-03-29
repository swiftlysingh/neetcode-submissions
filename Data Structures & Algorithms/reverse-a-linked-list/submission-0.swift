/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard let head = head else { return nil }

        guard let next =  head.next else { return head }

        
        var restReverse = reverseList(next)
        
        next.next = head
        head.next = nil

        return restReverse
    }
}
