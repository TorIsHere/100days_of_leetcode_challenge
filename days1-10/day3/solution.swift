class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        var foundChars:[Character:Int] = [Character:Int]()
  
        var maxLength = 0
        var curCount = 0
        var minimumIndex = 0
        
        for (index, char) in s.enumerated() {
            
            if let duplicatedIndex = foundChars[char] {
                // Found duplicated
                if (maxLength < curCount) {
                    maxLength = curCount
                }
                
                if (minimumIndex < duplicatedIndex) {
                    minimumIndex = duplicatedIndex
                }
                
                // if duplicated is position before minimum index
                if (duplicatedIndex < minimumIndex) {
                    curCount = index - minimumIndex 
                } else {
                    curCount = index - duplicatedIndex   
                }
            } else {
                // Counting
                curCount += 1
            }
            
            foundChars[char] = index
        }
        
        if (maxLength < curCount) {
            maxLength = curCount
        }
        return maxLength
    }
}