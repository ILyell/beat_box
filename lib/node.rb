class Node

    attr_reader :data
    attr_accessor :next_node

    # Basic node initialization

    def initialize(data)
        @data = data
        @next_node = nil
    end
end