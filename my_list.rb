require_relative './my_enumerable.rb'

class MyList
    def initialize(*list)
        @list = list
    end
include MyEnumerable
end