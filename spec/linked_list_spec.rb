require "./lib/node"
require "./lib/linked_list"

RSpec.describe do 
    it 'exist' do
        list = LinkedList.new

        expect(list).to be_a(LinkedList)
    end
    it 'holds a head node value' do
        list = LinkedList.new

        expect(list.head).to eq(nil)
    end
    it 'Can add a node to the back of the list' do
        list = LinkedList.new

        list.head
        expect(list.head).to eq(nil)
        list.append("drop")
        expect(list.head.data).to eq("drop")
        list.append("bop")
        expect(list.head.next_node.data).to eq("bop")
    end
    it 'can count the nodes contained' do
        list = LinkedList.new
        list.append("drop")

        # expect(list.count).to eq(1)

        list.append("blop")

        expect(list.count).to eq(2)
    end
    it 'Can put the data into a string' do
        list = LinkedList.new
        list.append("blop")
        list.append("drop")
        list.append("bop")
        # list.append("dropldddl")
        
        expect(list.to_string).to eq("blop drop bop")
    end
    it 'Can add a node to the front of the list' do
        list = LinkedList.new

        list.head
        expect(list.head).to eq(nil)
        list.prepend("drop")
        expect(list.head.data).to eq("drop")
        list.prepend("bop")
        expect(list.head.data).to eq("bop")
        expect(list.head.next_node.data).to eq("drop")
    end
    it 'Can insert data at a set place in the list' do
        list = LinkedList.new

        list.prepend("drop")
        list.prepend("bop")
        list.insert(1, "plop")

        expect(list.head.data).to eq("bop")
        expect(list.head.next_node.data).to eq("plop")
        expect(list.head.next_node.next_node.data).to eq("drop")
    end
    it 'can find elements in the list' do
        list = LinkedList.new

        list.prepend("drop")
        list.prepend("bop")
        list.insert(1, "plop")
        list.append("doop")
        list.append("moop")

        expect(list.find(2, 1)).to eq("drop")
        expect(list.find(1, 3)).to eq("plop drop doop")
    end
    it 'Can see if a value is in the list' do
        list = LinkedList.new

        list.prepend("drop")
        list.prepend("bop")
        list.insert(1, "plop")
        list.append("doop")
        list.append("moop")

        expect(list.includes?("drop")).to eq(true)
        expect(list.includes?("beep")).to eq(false)
        expect(list.includes?("moop")).to eq(true)
    end
    it 'can pop an element from the end of the list' do
        list = LinkedList.new

        list.prepend("drop")
        list.prepend("bop")
        list.insert(1, "plop")
        list.append("doop")
        list.append("moop")

        expect(list.pop).to eq("moop")
        expect(list.count).to eq(4)
        expect(list.pop).to eq("doop")
        expect(list.count).to eq(3)
    end
end