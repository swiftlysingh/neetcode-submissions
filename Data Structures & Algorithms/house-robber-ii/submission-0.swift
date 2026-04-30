class Solution {
    func rob(_ nums: [Int]) -> Int {

        func helpRobing(_ from: Int, _ to: Int) -> Int {
            var subp = Array(repeating: 0,count: nums.count)

            for i in from...to {
                var prev = 0
                if i >= 2 {
                    prev = subp[i-2]
                }
                subp[i] = max(nums[i] + prev, subp[i == 0 ? 0 : i-1])
            }

            return subp[to]
        }

        if nums.count == 1 { return nums[0]}

        return max(helpRobing(0,nums.count-2),helpRobing(1,nums.count-1))
    }

}
