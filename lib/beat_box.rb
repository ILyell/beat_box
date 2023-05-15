

class BeatBox

    attr_reader :list, :rate, :voice

    # Initialize BeatBox class, Creating a LinkedList and a new node if needed.

    def initialize(data = nil)
        @list = LinkedList.new
        node_create(data)
        @voice = "Fred"
        @rate = 500
    end

    # Append multiple pieces of data from one input and creates nodes as necessary

    def append(string)
        data_hold = string.split(" ")
        data_hold.each do |data|
            list.append(data.to_s) if word_list.include?(data) == true
        end
        string
    end

    # Prepend multiple pieces of data from one input and creates nodes as necessary 

    def prepend(string)
        data_hold = string.split(" ")
        data_hold.reverse.each do |data|
            list.prepend(data.to_s) if word_list.include?(data) == true
        end
        string
    end

    # Count the amount of nodes in the linked list

    def count
        list.count
    end

    # Convert all the data inside nodes into one string output

    def all
        list.to_string
    end

    # Play the given data from nodes at a set speed and set voice and returning the count of the nodes.

    def play
        `say -r #{@rate} -v #{@voice} #{list.to_string}`
        count
    end

    # Creates a node on BeatBox initialization if needed.

    def node_create(data)
        append(data) if data != nil
    end

    # List of approved words that will be filtered against.

    def word_list
        "beep doop deep pop bam woo hoo shu doo ditt tee"
    end

    # Rate at which play back in terminal is
    
    def rate(rate)
        @rate = rate
    end

    # Voice used by terminal

    def voice(voice)
        @voice = voice
    end

    # Reset rate to a default (500)

    def reset_rate
        rate(500)
    end

    # Reset voice to a default ("Fred")

    def reset_voice
        voice("Fred")
    end
end