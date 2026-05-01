class Solution {
    func reverse(_ x: Int) -> Int {
        var num = x
        var pow =  10
        var ans = 0
        let MAX = Int32.max
        let MIN = Int32.min

        while num != 0 {
            var digit = num%10
            num = num / 10
            ans = ans * 10 + digit
            
            if ans >= MAX { return 0 }
            if ans <= MIN { return 0 }
            

        }

        return ans

    }
}
