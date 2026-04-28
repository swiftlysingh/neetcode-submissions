class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var numset = Set(nums)
        var maxLength = 0

        for nums in numset {
            if !numset.contains(nums-1) {
                var length = 1

                while numset.contains(nums+length) {
                    length+=1
                }
                maxLength = max(maxLength,length)

            }
        }

        return maxLength
    }
}
