# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    return 0 if target < nums[0]
    return nums.length if target > nums[nums.length - 1]
  
    left, right = 0, nums.length - 1

    while left <= right
        mid = left + (right - left) / 2

        if nums[mid] == target
            return mid
        elsif nums[mid] < target
            left = mid + 1
        else
            right = mid - 1
        end
    end

    left
end