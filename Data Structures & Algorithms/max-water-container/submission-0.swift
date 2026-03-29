class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var max = 0
        var left = 0
        var right = heights.count - 1

        while left < right {
            let area = (right - left) * min(heights[left],heights[right])

            if area > max {
                max = area
            }

            if heights[left] < heights[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        return max
    }
}
