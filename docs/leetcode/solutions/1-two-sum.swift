class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numCount: [Int: Int] = [:]
        var result: [Int] = []
        for (i, v) in nums.enumerated() {
            let remainingValue = target - v
            if let index = numCount[remainingValue] {
                result = [index , i]
            } else {
                numCount[v] = i
            }
        }
        return result
    }
}

var solution = Solution()

var testcase1 = solution.twoSum([2,7,11,15], 9)
print(testcase1) // [0, 1]

var testcase2 = solution.twoSum([3,2,4], 6)
print(testcase2) // [1, 2]

var testcase3 = solution.twoSum([3,3], 6)
print(testcase3) // [0, 1]