require "/linked_list"

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
    end

    def count
        list.count
    end
end