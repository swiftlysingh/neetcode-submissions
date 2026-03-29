class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var maxK = piles.max()!
        var lowK = 1

        while lowK <= maxK {
            var k = lowK + (maxK - lowK)/2
            var totalTime = 0   

            for pile in piles {
                totalTime += (pile+k-1)/k
            }

            if totalTime <= h {
                maxK = k - 1
            } else if totalTime > h {
                lowK = k + 1
            }
        }


        return lowK

    }
}
