class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var stack = [(Int,Int)]()
        var ans = [Int](repeating: 0, count: temperatures.count)

        stack.append((temperatures[0],0))

        for i in 1..<temperatures.count { 
            while let (topTemp,topi) = stack.last, topTemp < temperatures[i] {
                ans[topi] = i - topi
                stack.removeLast()
            }  
                stack.append((temperatures[i],i))
            
        }

        return ans
    }
}
