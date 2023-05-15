# require "/node"

class LinkedList

    attr_reader :head

    # Initialize LinkedList Class

    def initialize
        @head = nil
    end

    # Append data the the back of the list, creating node connections when doing so.

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

    # count the amount of nodes present in the LinkedList

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

    # Convert the data in the linked list into one string

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

    # Prepend the data to the front of the list making the new node the head node and add connectoin to next node

    def prepend(data) 
        if @head == nil 
            @head = Node.new(data) 
        elsif @head != nil 
            old_node = @head 
            @head = Node.new(data) 
            @head.next_node = old_node 
        end 
    end

    # Insert data at a specific index, creating connections to the prepended and appended nodes

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

    # Find data starting at a given index then the appending nodes if needed

    def find(index, amount)
        data_hold = []
        if index == 0
            node_hold = @head
        elsif index != 0
            node_hold = @head
            (index).times do
                node_hold = node_hold.next_node
            end
            data_hold << node_hold.data
            (amount - 1).times do 
                node_hold = node_hold.next_node
                data_hold << node_hold.data
            end
        end
        data_hold.join(" ")
    end

    # Checks if any nodes containt the given data and returns boolean

    def includes?(data)
        node_hold = @head
        included = false
        while node_hold != nil
            if node_hold.data == data
                included = true
                break
            end
            node_hold = node_hold.next_node
        end
        included
    end

    # Pop data from the end of the node and returns it

    def pop
        node_hold = @head
        until node_hold.next_node.next_node == nil
            node_hold = node_hold.next_node
        end
        data_hold = node_hold.next_node.data
        node_hold.next_node = nil
        data_hold
    end
end