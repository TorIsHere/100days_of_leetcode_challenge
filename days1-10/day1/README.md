# Two Sum

--- 

Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

**Example 1:"** 
```
Input: nums = [2,7,11,15]
target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1]
```

**Example 2:"**
```
Input: nums = [3,2,4]
target = 6
Output: [1,2]
```

**Example 3:"**
```
Input: nums = [3,3]
target = 6
Output: [0,1]
```

# My Solution
1. Time complexity O(n^2) solution
   So the first thought is a straight forward approach where you can loop inside loop through an array, imagining having a 2 pointer, one point at one index and another one move through the rest of the array. Worst case scenario would be O(n^2)


2. Time complexity O(n) solution
   We can do better than that, the problem with array is searching without modify an array, worst case to search in array is O(n^2). We can sort it and make searching O(log n) but we will loose the original index. So instead we store number in Dictionary (HashMap), which find complexity is O(1) (assume hash function is perfect)
   
```
Input: nums = [2,7,11,15]
target = 9
numsDict = {
 2: 0,
 7: 1,
 11: 2,
 15, 3
}
```