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
    func hasCycle(_ head: ListNode?) -> Bool {
        var fast = head?.next?.next
        var slow = head

        while slow?.next != nil && fast?.next?.next != nil {
            if fast === slow {
                return true
            }
            slow = slow?.next
            fast = fast?.next?.next
        }

        return false

    }
}
