# @param {Integer[]} nums
# @return {Integer[][]}
def permute_unique(nums)
    nums.sort!
    result = []
    backtrack(nums, [], nums, result)
    return result
end

def backtrack(nums, perm, remaining, result)
    if perm.length == nums.length
         result << perm.dup
        return
    end
    
    prev = nil
    remaining.each_with_index do |num, idx|
        next if num == prev
        
        perm.push(num)
        backtrack(nums, perm, remaining[0...idx] + remaining[(idx+1)..-1], result)
        perm.pop
        prev = num
    end
end
