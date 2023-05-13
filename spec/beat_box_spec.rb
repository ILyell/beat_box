require "./lib/node"
require "./lib/linked_list"
require "./lib/beat_box"

RSpec.describe do

    it "exist" do
        bb = BeatBox.new

        expect(bb).to be_a(BeatBox)
    end

    it "Is created with a linked list" do
        bb = BeatBox.new

        expect(bb.list).to be_a(LinkedList)
        expect(bb.list.head).to eq(nil)
    end

    it "can appened multible nodes at once" do
        bb = BeatBox.new
        bb.append("deep doo ditt")

        expect(bb.list.head.data).to eq("deep")
        expect(bb.list.head.next_node.data).to eq("doo")

        bb.append("woo hoo shu")

        expect(bb.count).to eq(6)
        expect(bb.list.to_string).to eq("deep doo ditt woo hoo shu")
    end

    it 'can preprened multiple nodes at once' do
        bb = BeatBox.new
        bb.append("deep doo ditt")
        bb.prepend("woo hoo shu")

        expect(bb.list.to_string).to eq("woo hoo shu deep doo ditt")
        expect(bb.count).to eq(6)
    end

    it 'can show all data in the list' do
        bb = BeatBox.new
        bb.append("deep doo ditt")
        bb.prepend("woo hoo shu")

        expect(bb.all).to eq("woo hoo shu deep doo ditt")
    end
end