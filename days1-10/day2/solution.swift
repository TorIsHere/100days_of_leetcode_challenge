/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let ans = ListNode()
        var l1Pointer = l1
        var l2Pointer = l2
        var pointer = ans
        var carryOver = 0
        while (l1Pointer != nil || l2Pointer != nil) {
            let firstValue = l1Pointer?.val ?? 0
            let secondValue = l2Pointer?.val ?? 0
            let result = (firstValue + secondValue + carryOver) % 10
            carryOver = (firstValue + secondValue + carryOver) / 10
            pointer.val = result
            
            l1Pointer = l1Pointer?.next ?? nil
            l2Pointer = l2Pointer?.next ?? nil
            
            if (l1Pointer != nil || l2Pointer != nil) {
                let next = ListNode()
                pointer.next = next
                pointer = next
            } else if (carryOver > 0) {
                let next = ListNode(carryOver)
                pointer.next = next
                pointer = next
            }
        } 
        return ans
    }
}