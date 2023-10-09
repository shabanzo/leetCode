# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    return 0 if target < nums[0]
    return nums.length if target > nums[nums.length - 1]
    target_index = nil
    nums.each_with_index do |num, index|
        if num == target
            target_index = index
            break
        elsif num > target
            target_index = index
            break
        end
    end
    target_index
end