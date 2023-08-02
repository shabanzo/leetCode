# @param {String} s
# @return {Boolean}
def is_valid(s)
    op_br = []
    s.chars.each_with_index do |c, i|
        if c == '(' || c == '{' || c == '['
            op_br << c
        else
            if op_br.empty? || 
            (c == ')' && op_br[op_br.length - 1] != '(') ||
            (c == '}' && op_br[op_br.length - 1] != '{') ||
            (c == ']' && op_br[op_br.length - 1] != '[')
                return false
            end
            op_br.pop
        end

    end
    op_br.empty?
end