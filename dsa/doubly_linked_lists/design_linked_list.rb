# https://leetcode.com/problems/design-linked-list/
# Your MyLinkedList object will be instantiated and called as such:
# obj = MyLinkedList.new()
# param_1 = obj.get(index)
# obj.add_at_head(val)
# obj.add_at_tail(val)
# obj.add_at_index(index, val)
# obj.delete_at_index(index)
class Node
  attr_accessor :val, :next, :prev
  def initialize(val)
    @val = val
    @next = nil
    @prev = nil
  end
end

class MyLinkedList
  def initialize()
    @head = Node.new(0)
    @tail = Node.new(0)
    @head.next = @tail
    @tail.prev = @head
  end

=begin
:type index: Integer
:rtype: Integer
=end
  def get(index)
    current = @head.next
    while current && index > 0
      current = current.next
      index -= 1
    end
    
    if current && current != @tail && index == 0
      return current.val
    end
    return -1
  end

=begin
:type val: Integer
:rtype: Void
=end
  def add_at_head(val)
    node = Node.new(val)
    next_node = @head.next
    prev_node = @head

    prev_node.next = node
    next_node.prev = node
    node.next = next_node
    node.prev = prev_node
  end

=begin
:type val: Integer
:rtype: Void
=end
  def add_at_tail(val)
    node = Node.new(val)
    next_node = @tail
    prev_node = @tail.prev

    prev_node.next = node
    next_node.prev = node
    node.next = next_node
    node.prev = prev_node
  end

=begin
:type index: Integer
:type val: Integer
:rtype: Void
=end
  def add_at_index(index, val)
    current = @head.next
    while current && index > 0
      current = current.next
      index -= 1 
    end

    if current && index == 0
      node = Node.new(val)
      next_node = current
      prev_node = current.prev

      prev_node.next = node
      next_node.prev = node
      node.next = next_node
      node.prev = prev_node
    end
  end

=begin
:type index: Integer
:rtype: Void
=end
  def delete_at_index(index)
    current = @head.next
    while current && index > 0
      index -= 1 
      current = current.next
    end

    if current && current != @tail && index == 0
      current.next.prev = current.prev if current.next
      current.prev.next = current.next if current.prev
      current = nil
    end
  end

  def print_list(method, *args)
    node = @head.next
    string = ""
    while node && node != @tail
      string << "#{node.val} -> "
      node = node.next
    end
    puts "Method: #{method}, Args: #{args.inspect}"
    puts string.chomp(" -> ")
  end

end
