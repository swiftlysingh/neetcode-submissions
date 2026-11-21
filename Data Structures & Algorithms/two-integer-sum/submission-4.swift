class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var set = [Int:Int]()
        for i in 0..<nums.count {
            var rem = target - nums[i]

            if let ans = set[rem] {
                return [ans,i]
            } else {
                set[nums[i]] = i
            }
        }
    return []
    }
}
