class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var numsCount: [Int: Int] = [:]
        for i in nums {
            if let count = numsCount[i] {
                numsCount[i] = count + 1
            } else {
                numsCount[i] = 1
            }
        }
        var countArray: [[Int]] = []
        for _ in 0...nums.count {
            countArray.append([])
        }
        for (key, value) in numsCount {
            countArray[value].append(key)
        }
        var topKElements: [Int] = []
        for i in stride(from: countArray.count - 1, to: -1, by: -1) {
            topKElements.append(contentsOf: countArray[i])
            if topKElements.count == k {
                break
            }
        }
        return topKElements
    }
}

var solution = Solution()

var testcase1 = solution.topKFrequent([1,1,1,2,2,3], 2)
print(testcase1) // [1, 2]

var testcase2 = solution.topKFrequent([1], 1)
print(testcase2) // [1]