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
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        
        var lists = lists

        var i = lists.count

        while i >= 0 {
            var first = lists.isEmpty ? nil : lists.removeLast()
            var second = lists.isEmpty ? nil : lists.removeLast()

            var merge = mergeTwoList(first,second)

            lists.append(merge)
            i -= 1
        }

        return lists.removeLast()
    }

    func mergeTwoList(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {

        var l1 = l1, l2 = l2

        var ans: ListNode? = ListNode(0)
        var ansHead = ans 

        while l1 != nil && l2 != nil {
            if l1!.val <= l2!.val {
                ans?.next = l1
                l1 = l1?.next
            } else {
                ans?.next = l2
                l2 = l2?.next
            }

            ans = ans?.next
        }

        if l1 != nil {
            ans?.next = l1 
        } else {
            ans?.next = l2
        }

        return ansHead?.next
    }
}
