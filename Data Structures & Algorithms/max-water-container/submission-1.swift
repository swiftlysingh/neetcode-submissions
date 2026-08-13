class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var left = 0
        var right = heights.count - 1
        var area = 0
        while left < right {
            area = max(area, abs(right - left) * min(heights[left],heights[right]))
            if heights[left] < heights[right] {
                left += 1
            } else {
                right -= 1
            }
        }

        return area
    }
}
