class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var nums = nums.sorted()
        var ans = [[Int]]()

        for i in 0..<nums.count {
            if i > 0 && nums[i] == nums[i - 1] { continue }
            var left = i + 1
            var right = nums.count - 1

            while left < right {

                let sum = -(nums[left] + nums[right])

                if nums[i] < sum {
                    left += 1
                } else if nums[i] > sum {
                    right -= 1
                } else {
                    ans.append([nums[i],nums[left],nums[right]])
                    while left < right && nums[left] == nums[left + 1] { left += 1 }
                    while left < right && nums[right] == nums[right - 1] { right -= 1 }
                    left += 1
                    right -= 1
                }
            }

        }

        return ans
    }
}
