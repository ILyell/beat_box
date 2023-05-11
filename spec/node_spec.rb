require "./lib/node"

RSpec.describe do
    it 'exist' do
        node = Node.new("plop")

        expect(node).to be_a(Node)
    end
    it 'takes a data argument' do
        node = Node.new("plop")

        expect(node.data).to eq("plop")
    end
    it 'holds a next_node value' do
        node = Node.new("plop")

        expect(node.next_node).to eq(nil)
    end
end