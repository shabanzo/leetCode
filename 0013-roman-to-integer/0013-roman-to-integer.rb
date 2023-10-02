# @param {String} s
# @return {Integer}
def roman_to_int(s)
    roman_values = {
        'I' => 1,
        'V' => 5,
        'X' => 10,
        'L' => 50,
        'C' => 100,
        'D' => 500,
        'M' => 1000
    }

    sum = 0
    prev_value = 0

    s.chars.reverse_each do |roman|
        value = roman_values[roman]
        if value < prev_value
            sum -= value
        else
            sum += value
        end
        prev_value = value
    end

    sum
end