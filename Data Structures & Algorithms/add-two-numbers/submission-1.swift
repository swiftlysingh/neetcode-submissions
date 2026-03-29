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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var carry = 0
        var ans : ListNode? = ListNode(0)
        var head = ans

        var l1 = l1, l2 = l2

        while l1 != nil && l2 != nil {
            var sum = l1!.val + l2!.val + carry

            carry = sum / 10

            ans?.next = ListNode(sum%10) 

            l1 = l1?.next
            l2 = l2?.next
            ans = ans?.next
        }

        while l1 != nil {
            var sum = l1!.val + carry

            carry = sum / 10

            ans?.next = ListNode(sum%10)

            l1 = l1?.next
            ans = ans?.next
        }

        while l2 != nil {
            var sum = l2!.val + carry

            carry = sum / 10

            ans?.next = ListNode(sum%10)

            l2 = l2?.next
            ans = ans?.next
        }

        if carry > 0 {
            ans?.next = ListNode(carry)
        }

        return head?.next
    }   
}
