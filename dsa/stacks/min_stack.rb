# https://leetcode.com/problems/min-stack/

class MinStack
    def initialize()
        @values = [] # [[1,1][12,1][-2,-2],[5,-2]]
    end


=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
      return if val.nil?
      min = [get_min, val].min
      @values[@values.length] = [val, min]
    end


=begin
    :rtype: Void
=end
    def pop()
      @values.pop
    end


=begin
    :rtype: Integer
=end
    def top()
       @values[@values.length-1][0]
    end


=begin
    :rtype: Integer
=end
    def get_min()
      return Float::INFINITY if @values.empty?
      @values[@values.length-1][1]
    end

end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()
