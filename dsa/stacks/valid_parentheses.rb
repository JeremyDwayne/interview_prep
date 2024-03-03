# https://leetcode.com/problems/valid-parentheses/
# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []
  parens = { '(' => ')', '{' => '}', '[' => ']' }
  s.chars.each do |token|
    if parens.keys.include? token
      stack.push(token)
    else
      return false if token != parens[stack.pop]
    end
  end
  stack.length == 0
end
