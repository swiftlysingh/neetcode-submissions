class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        for i in 0..<n {
            nums1[i+m] = nums2[i] 
        }

        nums1.sort()
    }   
}
