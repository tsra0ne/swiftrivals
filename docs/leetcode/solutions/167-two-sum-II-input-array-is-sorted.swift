class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var i = 0
        var j = numbers.count - 1
        var result: [Int] = []
        while i < j {
            if numbers[i] + numbers[j] < target {
                i += 1
                continue
            }
            if numbers[i] + numbers[j] > target {
                j -= 1
                continue
            }
            if numbers[i] + numbers[j] == target {
                result = [i + 1, j + 1]
                break
            }
        }
        return result
    }
}

var solution = Solution()

var testcase1 = solution.twoSum([2,7,11,15], 9)
print(testcase1) // [1, 2]

var testcase2 = solution.twoSum([2,3,4], 6)
print(testcase2) // [1, 3]

var testcase3 = solution.twoSum([-1, 0], -1)
print(testcase3) // [1, 2]