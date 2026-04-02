class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var result = [Int](repeating: 0, count: temperatures.count)
        var stack = [(Int,Int)]()

        for i in 0..<temperatures.count {

            while let (stIndex,stVal) = stack.last, stVal < temperatures[i] {
                result[stIndex] = i - stIndex
                stack.removeLast()
            }

            stack.append((i,temperatures[i]))
        }

        return result
    }
}
