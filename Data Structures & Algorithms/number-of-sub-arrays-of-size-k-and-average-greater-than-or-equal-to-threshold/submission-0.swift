class Solution {
    func numOfSubarrays(_ arr: [Int], _ k: Int, _ threshold: Int) -> Int {
        var ans = 0

        for left in 0...arr.count - k {
            var right = left + k
            var sum = 0

            for i in left..<right {
                sum += arr[i]
            }

            var avg = sum / k

            if avg >= threshold {
                ans += 1
            }
        }

        return ans
    }
}
