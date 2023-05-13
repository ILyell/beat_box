

class BeatBox

    attr_reader :list

    def initialize 
        @list = LinkedList.new
    end

    def append(string)
        data_hold = string.split(" ")
        data_hold.each do |data|
            list.append(data.to_s)
        end
        string
    end

    def count
        list.count
    end

    def play
        `say -r 40 -v Fred #{list.to_string}`
        count
    end
end