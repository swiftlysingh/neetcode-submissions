class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var set = [Int:Int]()

        for (i,num) in nums.enumerated() {
            let remaining = target - num

            if let j = set[remaining] { return [j,i] }

            set[num] = i
        }

        return []
    }
}
