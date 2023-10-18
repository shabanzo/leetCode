# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    normalized_str = s.downcase.gsub(/[^a-z0-9]/, '')
    normalized_str == normalized_str.reverse
end