# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    carry = 1
  
    (digits.length - 1).downto(0) do |i|
        current_sum = digits[i] + carry
        digits[i] = current_sum % 10
        carry = current_sum / 10
    end
  
    if carry != 0
        digits.unshift(carry)
    end
  
    digits
end