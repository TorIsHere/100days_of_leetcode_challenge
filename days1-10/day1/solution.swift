class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // Dictionary key is nu,ber value is index
        var numDict: [Int: Int] = [:]
        for (index, element) in nums.enumerated() {
             numDict[element] = index
        }
        
        var firstIndex = -1
        var secondIndex = -1
        
        for (index, element) in nums.enumerated() {
            if let pairIndex = numDict[target - element],  pairIndex != index {
                firstIndex = index
                secondIndex = pairIndex
                break
            }
        }
        
        return [firstIndex,secondIndex]
    }
}