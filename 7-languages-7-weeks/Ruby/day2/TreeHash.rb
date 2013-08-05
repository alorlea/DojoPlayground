class TreeHash
  attr_accessor :tree
  def initialize(tree={})
    @tree = tree
  end

  def visit_all(&block)
    visit &block
    tree.values.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end
ruby_tree = TreeHash.new({'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {},
'child 4' => {} } } })
puts "Visiting a Node"

ruby_tree.visit{|values| values.tree.values.each {|c| puts c.keys}}

puts"visiting all tree"
ruby_tree.visit_all{|values| puts values.tree.keys}  