class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var map = [Int:Int]()

        for num in nums {
            map[num,default: 0] += 1
        }

        return map.sorted { $0.value > $1.value }.prefix(k).map {$0.key}
    }
}
