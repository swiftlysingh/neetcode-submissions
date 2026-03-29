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
    func reorderList(_ head: ListNode?) {
        var slow = head, fast = head
        var head = head
        
        while fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        var curr = slow?.next
        slow?.next = nil
        var prev: ListNode? = nil

        while curr != nil {
            var temp = curr?.next
            curr?.next = prev

            prev = curr
            curr = temp
        }

        while head != nil && prev != nil {
            var tempH = head?.next
            
            head?.next = prev


            var tempP = prev?.next

            prev?.next = tempH    

            head = tempH
            prev = tempP
        }
    }
}
