module MyEnumerable
  def all?
    check_arr = []
    @list.each { |num| check_arr.push(num) if yield num }
    check_arr.length == @list.length
  end

  def any?
    if_any = false
    @list.each { |num| if_any = true if yield num }
    if_any
  end

  def filter
    filtered_arr = []
    @list.each { |num| filtered_arr.push(num) if yield num }
    filtered_arr
  end
end
