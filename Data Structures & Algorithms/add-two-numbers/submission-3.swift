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
        var new : ListNode? = ListNode(0) 
        var dummy = new
        var l1 = l1
        var l2 = l2
        var carry = 0

        while l1 != nil || l2 != nil || carry != 0 {
            var first = l1?.val ?? 0
            var second = l2?.val ?? 0

            var sum = first + second + carry

            carry = sum / 10

            new?.next = ListNode(sum % 10)

            l1 = l1?.next
            l2 = l2?.next
            new = new?.next
        }

        return dummy?.next
    }
}
