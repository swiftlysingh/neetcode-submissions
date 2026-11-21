class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {

        var nums = nums
        nums.sort()

        var ans = [[Int]]()

        for i in 0..<nums.count {
            var left = i+1
            var right = nums.count - 1
            //skipping dupes
            if i > 0 && nums[i-1] == nums[i] {
                continue
            } 

            while left < right && right != i && left < nums.count {
                var total = nums[i] + nums[left] + nums[right]

                if total == 0 {
                    ans.append([nums[i], nums[left], nums[right]])
                    left += 1
                    right -= 1
                    while left < nums.count && nums[left] == nums[left - 1] {
                        left += 1
                    }

                    while right >= i && nums[right] == nums[right + 1] {
                        right -= 1
                    }
                }

                if total < 0 {
                    left += 1
                } else if total > 0 {
                    right -= 1
                }
            }
        }

        return ans
    }
}
