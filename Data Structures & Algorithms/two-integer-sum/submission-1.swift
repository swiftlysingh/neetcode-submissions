class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

        var set = [Int: Int]()

        for i in 0..<nums.count {
            var remaining = target - nums[i]

            if let index = set[remaining] {
                return [index,i]
            } 

            set[nums[i]] = i
        }

        return [0]
    }
}
