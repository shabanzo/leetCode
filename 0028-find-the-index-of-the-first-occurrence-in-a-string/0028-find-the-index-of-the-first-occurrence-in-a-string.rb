# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    first_occ_idx = -1
    haystack.chars.each_with_index do |char, index|
        first_occ_idx = index if haystack[index..index+needle.length-1] == needle

        break if first_occ_idx > -1
    end
    first_occ_idx
end