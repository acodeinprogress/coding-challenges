def prepend(value, node)
  Node.new(value, node)
end

class Node
  attr_accessor :value, :next

  def initialize(num, next_node = nil)
    @value = num
    @next = next_node
  end

  def ==(node)
    if node == nil
      return false
    end
    if @value == node.value && @next == node.next
      return true
    end
    return false
  end
end

def get_last_element(list)
  list.next != nil ? get_last_element(list.next) : list.value
end

def get_second_to_last_element(list, value = nil)
  list.next != nil ? get_second_to_last_element(list.next, list.value) : value  
end

def get_k_element(list, k, loops = 1)
  if loops != k
    loops += 1
    get_k_element(list, k, loops)
  else
    return list.value
  end
end

def get_length(list, length = 0)
  length += 1
  if list.next != nil
    length = get_length(list.next, length)
  end
  return length
end

def reverse_list(list, new_list = nil)
  if list != nil
    new_list = Node.new(list.value, new_list)
    new_list = reverse_list(list.next, new_list)
  end
 return new_list
end

def print_linked_list(list)
  puts list.value
  if list.next != nil
    print_linked_list(list.next)
  end
end

def linked_list_array(list, arr = [])
  arr << list.value
  if list.next != nil
    linked_list_array(list.next, arr)
  end
end

def is_list_palindrome?(list)
  if list == reverse_list(list)
    return true
  end
  return false
end

def concatenate_list(list)
    
#list = prepend(4, prepend(3, prepend(2, prepend(1, nil))))
list1 = Node.new(4)
list1 = Node.new(3, list1)
list1 = Node.new(3, list1)
list1 = Node.new(4, list1)

list2 = Node.new(3)
list2 = Node.new(7, list2)
list2 = Node.new(7, list2)
list2 = Node.new(3, list2)

list_of_lists = Node.new(list2)
list_of_lists = Node.new(list1, list_of_lists)

#puts get_last_element(list)
#puts get_second_to_last_element(list)
#puts get_k_element(list, 3)
#puts get_length(list)
#reverse_list(list)
#print_linked_list(list)
#print_linked_list(reverse_list(list))
print is_list_palindrome?(list)
