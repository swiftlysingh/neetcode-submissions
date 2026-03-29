class Solution {
    func trap(_ height: [Int]) -> Int {
        var prefixMax = Array(repeating: 0, count: height.count)
        var suffixMax = Array(repeating: 0, count: height.count)

        for i in 1..<height.count {
            prefixMax[i] = max(height[i-1],prefixMax[i-1])
        }


        for i in (0..<height.count-1).reversed() {
            suffixMax[i] = max(height[i+1],suffixMax[i+1])
        }

        var totalWater = 0

        for i in 0..<height.count {
            var localWater = min(prefixMax[i],suffixMax[i]) - height[i]
            if localWater > 0 {
                totalWater += localWater
            } 
        }

        return totalWater
    }
}
