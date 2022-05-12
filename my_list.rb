require_relative './my_enumerable.rb'

class MyList
    def initialize(*list)
        @list = list
    end
    include MyEnumerable

    def each
       i=0 
      while i < @list.length
         puts "hi"
         yield @list[i]
         i+=1
      end
    end     
end

test = MyList.new(1,2,3,4)