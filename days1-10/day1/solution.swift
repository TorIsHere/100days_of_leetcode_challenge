class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // Dictionary key is nu,ber value is index
        var diffDict: [Int: Int] = [:]
        for (index, element) in nums.enumerated() {
             diffDict[target - element] = index
        }
        
        var firstIndex = -1
        var secondIndex = -1
        
        for (index, element) in nums.enumerated() {
            if let pairIndex = diffDict[element],  pairIndex != index {
                firstIndex = index
                secondIndex = pairIndex
                break
            }
        }
        
        return [firstIndex,secondIndex]
    }
}