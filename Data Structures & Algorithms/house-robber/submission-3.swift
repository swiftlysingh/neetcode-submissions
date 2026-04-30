class Solution {
    func rob(_ nums: [Int]) -> Int {
        var map = Array(repeating: 0, count: nums.count)

        for (i,num) in nums.enumerated() {
            var prev = 0

            if i >= 2 {
                prev = map[i - 2]
            } 

            map[i] = max(map[ i > 0 ? i-1 : 0],num + prev)
        }

        return map[nums.count-1]
    }
}
