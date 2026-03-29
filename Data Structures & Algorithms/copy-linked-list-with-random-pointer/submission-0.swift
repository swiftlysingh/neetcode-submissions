/*
// Definition for a Node.
class Node {
    var val: Int
    var next: Node?
    var random: Node?
    init(_ val: Int) {
        self.val = val
        self.next = nil
        self.random = nil
    }
}
*/

class Solution {
    func copyRandomList(_ head: Node?) -> Node? {
        var oldToCopy = [ObjectIdentifier: Node]()
        var curr = head

        while curr != nil {
            var new = Node(curr!.val)

            oldToCopy[ObjectIdentifier(curr!)] = new

            curr = curr?.next
        }

        curr = head

        while curr != nil {
            var newCurr = oldToCopy[ObjectIdentifier(curr!)]
            if let currRand = curr?.random {
                var newRand = oldToCopy[ObjectIdentifier(currRand)]
                newCurr?.random = newRand
            } 
            if let next = curr?.next{
                newCurr?.next = oldToCopy[ObjectIdentifier(next)]
            }

            // copy?.next = newCurr
            
            curr = curr?.next
        }

        return head == nil ? nil : oldToCopy[ObjectIdentifier(head!)]
    }
}
