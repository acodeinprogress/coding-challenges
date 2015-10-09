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

def depth_first_search(tree, search_value)
  return tree if tree.payload == search_value
  tree.children.each do |child|
    node = depth_first_search(child, search_value)
    if node
      return node
    end
  end
  return nil
end

puts depth_first_search(trunk, 11)


