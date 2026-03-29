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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        // guard var list1 = list1 else { return list2 }
        // guard var list2 = list2 else {return list1 }
        var list1 = list1
        var list2 = list2
        var ans = ListNode(0)
        let head = ans
        while list1 != nil && list2 != nil {
            if list1!.val < list2!.val {
                ans.next = list1
                ans = ans.next!
                list1 = list1?.next
            } else {
                ans.next = list2 
                ans = ans.next!
                list2 = list2?.next
                
            }
        }

        if list1 != nil {
            ans.next = list1
        } 

        if list2 != nil {
            ans.next = list2
        }

        return head.next
    }
}
