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

    it 'can take data at initialization' do
        bb = BeatBox.new("deep")

        expect(bb.all).to eq("deep")
    end

    it 'can filter inputs to append and prepend' do
        bb = BeatBox.new("deep")

        expect(bb.list.to_string).to eq("deep")

        bb.append("Mississippi")
        
        expect(bb.all).to eq("deep")

        bb.prepend("tee tee tee Mississippi")

        expect(bb.all).to eq("tee tee tee deep")
    end

    it 'can have a diffrent voice' do
        bb = BeatBox.new("deep doo ditt")

        bb.voice("Daniel")

        expect(bb.voice"Daniel").to eq("Daniel")
    end

    it 'can have a diffrent rate' do
        bb = BeatBox.new("deep doo ditt")

        bb.rate(100)

        expect(bb.rate(100)).to eq(100)
    end

    it 'can reset the voice' do
        bb = BeatBox.new("deep doo ditt")

        bb.voice("Daniel")

        bb.reset_voice

        expect(bb.voice).to eq("Fred")
    end

    it 'can reset the rate' do
        bb = BeatBox.new("deep doo ditt")

        bb.rate(100)

        bb.reset_rate

        expect(bb.rate).to eq(500)
    end

end