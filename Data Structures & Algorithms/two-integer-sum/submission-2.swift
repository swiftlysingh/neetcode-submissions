class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var twoset = [Int:Int]()

        for (i,num) in nums.enumerated() {
            let remaining = target - num
            if let index = twoset[remaining]  {
                return [index,i]
            } else {
                twoset[num] = i
            }
        }
        return []
    }
}
