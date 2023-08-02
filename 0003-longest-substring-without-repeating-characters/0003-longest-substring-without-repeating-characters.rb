# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    return 0 if s.empty?
    return 1 if s.length == 1

    char_map = {}
    start = 0
    max_length = 0
    s.chars.each_with_index do |char, index|
        if char_map.key?(char) && char_map[char] >= start
            start = char_map[char] + 1
        end

        char_map[char] = index

        current_length = index - start + 1 
        max_length = [max_length, current_length].max
    end
    max_length
end