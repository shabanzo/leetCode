# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
  result = []
  backtrack(nums, [], result)
  return result
end

def backtrack(nums, current_permutation, result)
  if current_permutation.length == nums.length
    result << current_permutation.dup
    return
  end

  nums.each do |num|
    unless current_permutation.include?(num)
      current_permutation << num
      backtrack(nums, current_permutation, result)
      current_permutation.pop
    end
  end
end
