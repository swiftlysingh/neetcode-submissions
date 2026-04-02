/*
Definition for a Node.
class Node {
    var val: Int
    var neighbors: [Node?]
    init(_ val: Int) {
        self.val = val
        self.neighbors = []
    }
}
*/

class Solution {

    var nodeDict = [ObjectIdentifier: Node]()

    func cloneGraph(_ node: Node?) -> Node? {
        guard let node = node else { return nil }

        if let newNode = nodeDict[ObjectIdentifier(node)] {
            return newNode
        }

        var newNode = Node(node.val)
        nodeDict[ObjectIdentifier(node)] = newNode

        
        if node.neighbors.isEmpty {
            return newNode
        }

        for ad in node.neighbors {
            newNode.neighbors.append(cloneGraph(ad))
        }

        return newNode

    }
}
