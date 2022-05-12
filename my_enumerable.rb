module MyEnumerable 
	def all?
		check_arr = []
		list.each {|num| check_arr.push(num) if yield num} 
        check_arr.length == list.length
	end	
end	