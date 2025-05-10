class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var sLetterCount: [Character: Int] = [:]
        var tLetterCount: [Character: Int] = [:]

        for i in s {
            if let count = sLetterCount[i] {
                sLetterCount[i] = count + 1
            } else {
                sLetterCount[i] = 1
            }
        }

        for i in t {
            if let count = tLetterCount[i] {
                tLetterCount[i] = count + 1
            } else {
                tLetterCount[i] = 1
            }
        }

        if sLetterCount.count != tLetterCount.count {
            return false
        }

        for (letter, count) in sLetterCount {
            if let value = tLetterCount[letter], count == value {
                continue
            } else {
                return false
            }
        }

        return true
    }
}

var solution = Solution()

var testcase1 = solution.isAnagram("anagram", "nagaram")
print(testcase1) // true

var testcase2 = solution.isAnagram("rat", "car")
print(testcase2) // false