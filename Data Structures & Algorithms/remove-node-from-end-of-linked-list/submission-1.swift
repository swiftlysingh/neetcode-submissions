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
        var dummyH = head
        var total = 0
        while dummyH != nil {
            total += 1

            dummyH = dummyH?.next
        }

        var removeFromFirst = total - n

        var dummy : ListNode? = ListNode(0)
        dummy?.next = head

        var curr = dummy

        while removeFromFirst > 0 {
            curr = curr?.next

            removeFromFirst -= 1
        }

        curr?.next = curr?.next?.next

        return dummy?.next
    }
}
