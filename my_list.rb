require_relative './my_enumerable'

class MyList
  def initialize(*list)
    @list = list
  end
  include MyEnumerable

  def each
    i = 0
    while i < @list.length
      yield @list[i]
      i += 1
    end
  end
end

# Create our list
list = MyList.new(1, 2, 3, 4)

# Test #all?
list.all? { |e| e < 5 }
# true
list.all? { |e| e > 5 }
# false

# Test #any?
list.any? { |e| e == 2 }
# true
list.any? { |e| e == 5 }
# false

# Test #filter
list.filter(&:even?)
# [2, 4]
