class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var ans = [Int](repeating: 0, count: temperatures.count)
        var stack = [(Int,Int)]()

        for i in 0..<temperatures.count {
            while let (remainIndex, remainValue) = stack.last, temperatures[i] > remainValue {
                ans[remainIndex] = i - remainIndex
                stack.removeLast()
            }
            stack.append((i,temperatures[i]))

        }


        return ans
    }
}
