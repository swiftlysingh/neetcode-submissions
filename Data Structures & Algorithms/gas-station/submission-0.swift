class Solution {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        var totalCost = 0
        var totalGas = 0

        for g in gas {
            totalGas += g
        }

        for c in cost {
            totalCost += c
        }

        if totalCost > totalGas {
            return -1
        }

        var total = 0
        var ans = 0

        for i in 0..<gas.count {
            total += gas[i] - cost[i]

            if total < 0 {
                total = 0
                ans = i + 1
            }
        }

        return ans
    }
}
