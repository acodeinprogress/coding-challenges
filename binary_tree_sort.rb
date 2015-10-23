class BinaryTree
  def initialize
    @root = nil
  end

  def insert(payload)
    if @root == nil
      @root = Node.new(payload)
    else
      insert_recursive(payload, @root)
    end
  end

  def insert_many(numbers)
    numbers.each do |num|
      insert(num)
    end
  end

  def breadth_first_traversal()
    nodes = [@root]
    nodes.each do |node|
      if node.left != nil
        nodes << node.left 
      end
      if node.right != nil
        nodes << node.right
      end
    end
    return nodes
  end

  def sum()
    total = 0
    breadth_first_traversal.map{|x| total+= x.payload}
    return total
  end

  def print()
    breadth_first_traversal.map{|x| puts x.payload}
  end

  private

  def insert_recursive(payload, node)
    if payload < node.payload
      if node.left == nil 
        node.left = Node.new(payload)
      else
        insert_recursive(payload, node.left)
      end
    elsif payload > node.payload
      if node.right == nil 
        node.right = Node.new(payload)
      else
        insert_recursive(payload, node.right)
      end
    end
  end
end

class Node
  attr_accessor :payload, :left, :right

  def initialize(payload, left = nil, right = nil)
    @payload = payload
    @left = left
    @right = right
  end

end

numbers = [7, 4, 9, 1, 6, 14, 10]

tree = BinaryTree.new
tree.insert_many(numbers)
tree.print()
puts tree.sum()
