class Solution {
    func rob(_ nums: [Int]) -> Int {
        var map = [Int:Int]()
        var maxV = 0

        for (i,num) in nums.enumerated() {
            var prev = 0
            var next = 0

            if i >= 2 {
                prev = map[i - 2] ?? 0
            } 
            var new = num +  prev 

            map[i] = max(map[i-1] ?? 0,new)
            maxV = max(new, maxV)
        }

        return map[nums.count-1]!
    }
}
