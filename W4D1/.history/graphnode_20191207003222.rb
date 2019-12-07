class Graphnode
    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end

    def bfs(start_node, target_value)
        queue = [start_node]
        until queue.empty?
            node = queue.shift
            return node if node.val == target_value
            node.neighbors.each do |next_node|
                queue << next_node
            end
        end
        nil
    end
end

# a = GraphNode.new('a')
# b = GraphNode.new('b')
# c = GraphNode.new('c')
# d = GraphNode.new('d')
# e = GraphNode.new('e')
# f = GraphNode.new('f')
# a.neighbors = [b, c, e]
# c.neighbors = [b, d]
# e.neighbors = [a]
# f.neighbors = [e]