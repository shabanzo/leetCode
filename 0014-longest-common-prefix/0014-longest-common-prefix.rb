# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    return "" if strs.empty?
    
    sorted_strs = strs.sort

    first_str = sorted_strs.first
    last_str = sorted_strs.last
    
    common_prefix = ""
    
    first_str.chars.each_with_index do |char, index|
        if char == last_str[index]
            common_prefix += char
        else
            break
        end
    end
    
    common_prefix 
end