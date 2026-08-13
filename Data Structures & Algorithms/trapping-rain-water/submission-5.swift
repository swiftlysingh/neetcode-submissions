class Solution {
    func trap(_ height: [Int]) -> Int {
       var l = 0, r = height.count - 1
       var lM = height[l], rM = height[r]
       var ans = 0

       while l < r {
        if lM < rM {
            l += 1

            lM = max(lM, height[l])

            ans += lM - height[l]
        } else {
            r -= 1
            rM = max(rM,height[r])
            ans += rM - height[r]
        }
       }
       return ans
    }
}
