# require "/node"

class LinkedList

    attr_reader :head

    def initialize
        @head = nil
    end
    def append(data)
        if @head == nil
            @head = Node.new(data)
        elsif @head != nil
            node_hold = @head
            while node_hold.next_node != nil do
                node_hold = node_hold.next_node
            end
            node_hold.next_node = Node.new(data)
        end
    end
    def count
        counter = 0
        if @head != nil
            counter += 1 
            node_hold = @head
            while node_hold.next_node != nil
                counter += 1
                node_hold = node_hold.next_node
            end
        end
        counter
    end
    def to_string
        data = []
        node_hold = @head
        if @head == nil
            p "You have no data in the list"
        elsif @head != nil
            data << @head.data
            while node_hold.next_node != nil
                data << node_hold.next_node.data
                node_hold = node_hold.next_node
            end
        end
        data.join(" ")
    end
    def prepend(data) 
        if @head == nil 
            @head = Node.new(data) 
        elsif @head != nil 
            old_node = @head 
            @head = Node.new(data) 
            @head.next_node = old_node 
        end 
    end
    def insert(index, data)
        if @head == nil 
            @head = Node.new(data)
        elsif index == 0
            prepend(data)
        elsif index > count
            append(data)
        elsif @head != nil && index != 0
            new_node = Node.new(data)
            node_hold = @head
            (index - 1).times do 
                node_hold = node_hold.next_node 
            end
            new_node.next_node = node_hold.next_node
            node_hold.next_node = new_node
        end
    end
end