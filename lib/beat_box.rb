

class BeatBox

    attr_reader :list

    def initialize(data = nil)
        @list = LinkedList.new
        node_create(data)
        @voice = "Fred"
        @rate = 500
    end

    def append(string)
        data_hold = string.split(" ")
        data_hold.each do |data|
            list.append(data.to_s) if word_list.include?(data) == true
        end
        string
    end

    def prepend(string)
        data_hold = string.split(" ")
        data_hold.reverse.each do |data|
            list.prepend(data.to_s) if word_list.include?(data) == true
        end
        string
    end

    def count
        list.count
    end

    def all
        list.to_string
    end

    def play
        `say -r #{@rate} -v #{@voice} #{list.to_string}`
        count
    end

    def node_create(data)
        append(data) if data != nil
    end

    def word_list
        "beep doop deep pop bam woo hoo shu doo ditt tee"
    end
    
    def rate(rate)
        @rate = rate
    end

    def voice(voice)
        @voice = voice
    end

    def reset_rate
        rate(500)
    end

    def reset_voice
        voice("Fred")
    end
end