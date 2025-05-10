// Solution 1

class Solution1 {
    func isPalindrome(_ s: String) -> Bool {
        var newString = ""
        for c in s {
            if c.isLetter || c.isNumber {
                newString.append(c.lowercased())
            }
        }
        let reversedString: String = String(newString.reversed())
        if newString == reversedString {
            return true
        }
        return false
    }
}

var solution1 = Solution1()

var testcase11 = solution1.isPalindrome("A man, a plan, a canal: Panama")
print(testcase11) // true

var testcase12 = solution1.isPalindrome("race a car")
print(testcase12) // false

var testcase13 = solution1.isPalindrome(" ")
print(testcase13) // true


// Solution 2

class Solution2 {
    func isPalindrome(_ s: String) -> Bool {
        var i = 0
        var j = s.count - 1
        let stringArray = s.map { c in
            return c
        }
        while i <= j {
            let ithCharacter = stringArray[i]
            if !ithCharacter.isLetter && !ithCharacter.isNumber {
                i += 1
                continue
            }
            let jthCharacter = stringArray[j]
            if !jthCharacter.isLetter && !jthCharacter.isNumber {
                j -= 1
                continue
            }
            if ithCharacter.lowercased() != jthCharacter.lowercased() {
                return false
            }
            i += 1
            j -= 1
        }
        return true
    }
}

var solution2 = Solution2()

var testcase21 = solution2.isPalindrome("A man, a plan, a canal: Panama")
print(testcase21) // true

var testcase22 = solution2.isPalindrome("race a car")
print(testcase22) // false

var testcase23 = solution2.isPalindrome(" ")
print(testcase23) // true