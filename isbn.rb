def num_length(num)
	new_array = []
	full_array = []
	new_num_array = []
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
			new_num = num_str.pop
			joined_number = num_str.join
			new_num_array << joined_number.to_i
		else
			"Invalid ISBN"
		end
	elsif str_length < 10 || str_length > 10
		num_cap(num)
	else
		check_sum(num)
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

def check_sum(num)
	answer_array = []
	new_array = []
	full_array = []
	new_num_array = []
	str = num.gsub(/([- ])/, '')
	new_str = str.gsub(/[^Xx0-9 ]/, '')
	str_length = new_str.length
	num_str = str.split(//)
	match_element = num_str[9].to_i
	p match_element
	numbers = num_length(num)
  	new_num = numbers.zip([1,2,3,4,5,6,7,8,9])
	new_num.map! do |v,i|
	  answer = v*i
	  answer_array << answer 	
	end
	  sum = answer_array.sum
	  remainder = sum%11
	  p remainder
		if match_element == remainder
		"Result-Valid ISBN"
		else
		"Result-Invalid ISBN"
		end
end

# p check_sum("7421394761")
p check_sum("7432456497")
p check_sum("2546789123")
p check_sum("6856972348")
p check_sum("6856972342")

