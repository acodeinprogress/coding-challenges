class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

def reverse_list(node, previous=nil)
  temp = node.next_node
  node.next_node = previous
  if !temp.nil?
    x = reverse_list(temp, node)
    puts x.value
    puts node.value
    return x
  else
    return node
  end
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
