class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

def reverse_list(list_node)
  reversed_node = nil
  node = list_node
  while !node.nil?
    reversed_node = LinkedListNode.new(node.value, reversed_node)
    node = node.next_node
  end
  return reversed_node
end

def print_values(list_node)
  print "#{list_node.value} --> "
  if list_node.next_node.nil?
    puts "nil"
    return
  else
    print_values(list_node.next_node)
  end
end


node = LinkedListNode.new(37)
node = LinkedListNode.new(99, node)
node = LinkedListNode.new(12, node)

print_values(reverse_list(node))
