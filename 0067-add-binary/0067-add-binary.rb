# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
    result = [] 
    carry = 0 

    i, j = a.length - 1, b.length - 1

    while i >= 0 || j >= 0
        bit_a = i >= 0 ? a[i].to_i : 0
        bit_b = j >= 0 ? b[j].to_i : 0

        total = bit_a + bit_b + carry

        carry = total / 2

        result.unshift(total % 2)

        i -= 1
        j -= 1
    end

    result.unshift(carry) if carry > 0
    result.join('')
end