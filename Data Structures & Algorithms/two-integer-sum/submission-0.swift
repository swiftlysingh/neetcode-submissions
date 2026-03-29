class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int:Int]()

        for i in 0..<nums.count {
            let remaining = target - nums[i] 

            if let previous = map[remaining] {
                return [previous,i]
            } else {
                map[nums[i]] = i
            }
        }
        return []
    }
}
