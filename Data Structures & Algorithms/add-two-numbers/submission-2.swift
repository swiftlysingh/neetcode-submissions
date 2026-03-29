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

        var p1 = l1, p2 = l2

        while p1 != nil || p2 != nil || carry != 0 {
            var first = p1?.val ?? 0
            var second = p2?.val ?? 0
            

            var sum = first + second + carry

            carry = sum / 10

            ans?.next = ListNode(sum%10) 

            p1 = p1?.next
            p2 = p2?.next
            ans = ans?.next
        }

        return head?.next
    }   
}
