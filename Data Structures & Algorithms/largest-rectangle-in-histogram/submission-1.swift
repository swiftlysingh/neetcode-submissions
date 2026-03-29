class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        var stack = [Int]()
        var maxArea = 0
        let n = heights.count
        
        for i in 0...n {
            let currentHeight = (i == n) ? 0 : heights[i]
            
            while !stack.isEmpty && currentHeight < heights[stack.last!] {
                let h = heights[stack.removeLast()]
                let w = stack.isEmpty ? i : i - stack.last! - 1
                maxArea = max(maxArea, h * w)
            }
            stack.append(i)
        }
        
        return maxArea
    }
}
