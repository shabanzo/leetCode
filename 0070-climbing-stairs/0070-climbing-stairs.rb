# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    return 1 if n == 1
    return 2 if n == 2

    ways = [0] * (n + 1)
    ways[1] = 1
    ways[2] = 2

    (3..n).each do |i|
        ways[i] = ways[i - 1] + ways[i - 2]
    end

    return ways[n] 
end