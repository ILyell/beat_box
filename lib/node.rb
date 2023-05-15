class Node

    attr_reader :data, :next_node

    # Basic node initialization

    def initialize(data)
        @data = data
        @next_node = nil
    end

    def next_node(node= nil)
        @next_node = node
    end
end