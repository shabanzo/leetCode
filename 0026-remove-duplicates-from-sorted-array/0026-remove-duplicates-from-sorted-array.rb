# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    return 1 if nums.length == 1
    
    unique_counter = 1
    current_index = 0
    for current_index in 1...nums.length
        if nums[current_index] != nums[current_index - 1]
            nums[unique_counter] = nums[current_index]
            unique_counter += 1
        end
    end
    unique_counter
end