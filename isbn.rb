def num_length(num)
	new_array = []
	full_array = []
	str = num.gsub(/([- ])/, '')
	new_str = str.gsub(/[^Xx0-9 ]/, '')
	str_length = new_str.length
	if str_length == 10 
		num_str = str.split(//)
		array = num_str.join
		array_length = array.length
		if array_length == 10 && array.include?("x") == true
			num_cap(num)
		elsif array_length == 10
			full_array << array.to_i
		else
			"Invalid ISBN"
		end
	else
		num_cap(num)
	end
end

def num_cap(num)
	new_array = []
	full_array = []
	str = num.gsub(/[^Xx0-9 ]/, '')
	num_str = str.split(//)
	array = num_str.join
	full_array << array.to_i
	if num_str.length == 10 && num_str.include?("x") == true
		if num_str[9] == "x"
		partial_array = num_str.pop
		new_array << num_str.join.to_i
		else num_str[0]..num_str[8] == "x"
		"Invalid ISBN"
		end
	else
	"Invalid ISBN"
	end
end

p num_length("98&2547")
p num_length("496(25)36")
p num_length("496(25)36859")
p num_length("192-36-567-85")
p num_length("192 567 2678")
p num_length("982547")
p num_length("1235789543")
p num_length("653256789x")
p num_length("8254x67898")
p num_length("7943%67898")
p num_length("25@45$633x")


p num_cap("46578")
p num_cap("653256789x")
p num_cap("8254x67898")
p num_cap("7943%67898")
p num_cap("25@45$633x")
p num_cap("98&2547")
p num_cap("496(25)36")
p num_cap("496(25)36859")