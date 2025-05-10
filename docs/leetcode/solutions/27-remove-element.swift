class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        return 0
    }
}

var solution = Solution()

var testcase1 = [3,2,2,3]
print(solution.removeElement(&testcase1, 3)) // [2,2,_,_]

var testcase2 = [0,1,2,2,3,0,4,2]
print(solution.removeElement(&testcase2, 2)) // [0,1,4,0,3,_,_,_]