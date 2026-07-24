class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var freqMap = [Int:Int]()

        for num in nums {
            freqMap[num, default: 0] += 1
        }

        let sortedM = freqMap.sorted { $0.value > $1.value }

        return sortedM.prefix(k).map { $0.key }
    }
}
