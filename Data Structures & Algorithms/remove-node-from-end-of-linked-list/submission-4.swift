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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let dummy = ListNode(0)
        dummy.next = head

        var slow : ListNode? = dummy
        var fast = head
        var count = n

        while count > 0 {
            fast = fast?.next
            count -= 1
        }

        while fast != nil {
            slow = slow?.next
            fast = fast?.next
        }

        slow?.next = slow?.next?.next

        return dummy.next
    }
}
