class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var left = 0
        var right = 1
        while right < nums.count {
            if nums[left] != 0 {
                left = left + 1
            } else if nums[right] != 0 {
                nums.swapAt(left, right)
                left = left + 1
            }
            right  = right + 1
        }
    }
}

var solution = Solution()

var testcase1 = [0,1,0,3,12]
solution.moveZeroes(&testcase1)
print(testcase1) // [1,3,12,0,0]

var testcase2 = [0]
solution.moveZeroes(&testcase2)
print(testcase2) // [0]