class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var num = nums.sorted()
        var ans = [[Int]]()

        for i in 0..<num.count {
            if i > 0 && num[i] == num[i-1] { continue }
            
            var a = num[i]
            var left = i+1
            var right = num.count - 1
            
            if a > 0 { break }
            
            while left < right {
                let sum = num[left] + num[right] + a
                if sum == 0 {
                    ans.append([a, num[left], num[right]])
                    left += 1
                    right -= 1
                    while left < right && num[left] == num[left-1] { left += 1 }
                } else if sum > 0 {
                    right -= 1
                } else {
                    left += 1
                }
            }
        }

        return ans
    }
}
