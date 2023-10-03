# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    not_val_count = 0
    current_index = 0
    while current_index < nums.length
        if nums[current_index] != val
            nums[not_val_count] = nums[current_index]
            not_val_count += 1
        end
        current_index += 1
    end
    return not_val_count
end