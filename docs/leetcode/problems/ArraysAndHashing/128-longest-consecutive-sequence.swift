class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let numsSet = Set(nums)
        var currentNumber = 0
        var longestSequence = 0
        for num in numsSet {
            if !numsSet.contains(num - 1) {
                var newLength = 1
                currentNumber = num + 1
                while numsSet.contains(currentNumber) {
                    newLength += 1
                    currentNumber += 1
                }
                longestSequence = max(longestSequence, newLength)
            }
        }
        return longestSequence
    }
}

let solution = Solution()

let testcase1 = solution.longestConsecutive([100,4,200,1,3,2])
print(testcase1) // 4

let testcase2 = solution.longestConsecutive([0,3,7,2,5,8,4,6,0,1])
print(testcase2) // 9