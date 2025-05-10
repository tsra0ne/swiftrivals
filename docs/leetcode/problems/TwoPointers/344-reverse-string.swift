class Solution {
    func reverseString(_ s: inout [Character]) {
        var i = 0
        var j = s.count - 1
        while i < j {
            s.swapAt(i, j)
            i = i + 1
            j = j - 1
        }
    }
}

var solution = Solution()

var testcase1: [Character] = ["h","e","l","l","o"]
solution.reverseString(&testcase1)
print(testcase1) // ["o","l","l","e","h"]

var testcase2: [Character] = ["H","a","n","n","a","h"]
solution.reverseString(&testcase2)
print(testcase2) // ["h","a","n","n","a","H"]
