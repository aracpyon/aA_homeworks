class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end

end
def bfs(start_node, target_value)
    queue = [start_node]
    visited = Set.new()

    until queue.empty?
        node = queue.shift
        return node if node.val == target_value && visited.include?(node.to_sym)
        visited.add(node.to_sym)
        node.neighbors.each do |next_node|
            queue << next_node 
            
        end
    end
    nil
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

graph = {
  'a': ['b', 'c', 'e'],
  'b': [],
  'c': ['b', 'd'],
  'd': [],
  'e': ['a'],
  'f': ['e']
}
p bfs(a, "b")
p bfs(a, "f")
#jumping into the inifinite loop because this bfs search keeps back and forth between E and A
