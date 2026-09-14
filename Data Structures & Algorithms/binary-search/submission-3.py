class Solution:
    def search(self, nums: List[int], target: int) -> int:
        r = len(nums) - 1
        l = 0 
        while l <= r: 
            m = l + (r - l) // 2
            mid = nums[m]

            if mid == target: 
                return m 
            elif mid > target: 
                r = m - 1
            else: 
                l = m + 1
        return -1