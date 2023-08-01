# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  num_to_index = {}

  nums.each_with_index do |num, i|
    difference = target - num

    if num_to_index.key?(difference)
      return [num_to_index[difference], i]
    end

    num_to_index[num] = i
  end

  return []
end