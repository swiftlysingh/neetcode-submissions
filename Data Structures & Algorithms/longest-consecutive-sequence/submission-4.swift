class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var set = Set(nums) 
        var ans = 0


        for num in set {
            if !set.contains(num-1) {
                var longest = 1

                while set.contains(num+longest) {
                    longest += 1
                }

                ans = max(longest,ans)
            }
        }

        return ans
    }
}
