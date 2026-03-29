class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {

        for matri in matrix {
            if matri[matri.count - 1] >= target {
                var left = 0, right = matri.count - 1

                while left <= right {
                let mid = left + (right - left)/2
                if matri[mid] == target {
                    return true
                } else if matri[mid] < target {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
                } 
            } 
        }

        return false
    }
}
