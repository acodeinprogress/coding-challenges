class Tree
    attr_accessor :payload, :children

    def initialize(payload, children)
        @payload = payload
        @children = children
    end

    def to_s
      "#{payload} with #{children.length}"
    end

end


# The "Leafs" of a tree, elements that have no children
fifth_node    = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node   = Tree.new(4, [])


# The "Branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
fifth_node = Tree.new(5, [ninth_node])

# The "Trunk" of the tree
trunk   = Tree.new(2, [seventh_node, fifth_node])

def bredth_first_search(tree, search_value)
  if tree.payload == search_value
    return tree
  end
  children_nodes = []
  tree.children.each do |child|
    children_nodes << child
  end
  while children_nodes.length > 0
    node = children_nodes.shift
    if node.payload == search_value
      return node
    end
    node.children.each do |child|
      children_nodes << child
    end
  end
end

puts bredth_first_search(trunk, 11)
