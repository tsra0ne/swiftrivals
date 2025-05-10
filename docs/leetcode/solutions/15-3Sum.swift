class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let sortedNums = nums.sorted()
        var result: [[Int]] = []
        for (index, val) in sortedNums.enumerated() {
            if index > 0 && val == sortedNums[index - 1] {
                continue
            }
            var k = index + 1
            var j = sortedNums.count - 1
            while k < j {
                let threeSum = val + sortedNums[k] + sortedNums[j]
                if threeSum > 0 {
                    j -= 1
                } else if threeSum < 0 {
                    k += 1
                } else {
                    result.append([val, sortedNums[k], sortedNums[j]])
                    k += 1
                    while sortedNums[k] == sortedNums[k - 1] && k < j {
                        k += 1
                    }
                }
            }
        }
        return result
    }
}

var solution = Solution()

var testcase1 = solution.threeSum([-1,0,1,2,-1,-4])
print(testcase1) // [[-1,-1,2],[-1,0,1]]

var testcase2 = solution.threeSum([0,1,1])
print(testcase2) // []

var testcase3 = solution.threeSum([0,0,0])
print(testcase3) // [[0,0,0]]