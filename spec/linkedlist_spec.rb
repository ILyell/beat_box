require "./lib/node"
require "./lib/linkedlist"

RSpec.describe do 
    it 'exist' do
        list = LinkedList.new

        expect(list).to be_a(LinkedList)
    end
    it 'holds a head node value' do
        list = LinkedList.new

        expect(list.head).to eq(nil)
    end
    it 'Can add a node the the front of the list' do
        list = LinkedList.new

        list.head
        expect(list.head).to eq(nil)
        list.append("drop")
        expect(list.head.data).to eq("drop")
        list.append("bop")
        expect(list.head.data).to eq("bop")
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
        list.append("drop")
        list.append("blop")
        
        expect(list.to_string).to eq("blop drop")
    end
end