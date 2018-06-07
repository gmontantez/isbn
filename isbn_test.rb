require 'minitest/autorun'
require_relative 'isbn.rb'

class Isbn_test < Minitest::Test
	def test_true_is_true
		assert_equal(true,true)
	end

	def test_num_length_valid_ten_digit_number
		num = "1235789543"
		assert_equal([1235789543],num_length(num))
	end

	def test_num_length_number_not_ten_digits
		num = "982547"
		assert_equal("Invalid ISBN",num_length(num))
	end

	def test_remove_spaces
		num = "194 382 9087"
		assert_equal([1943829087],num_length(num))
	end

	def test_remove_hyphens
		num = "1-943-829-081"
		assert_equal([1943829081],num_length(num))
	end

	def test_num_length_function_x_at_end
		num = "653256789x"
		assert_equal([653256789],num_length(num))
	end

	def test_num_length_function_x_not_at_end
		num = "8254x67898"
		assert_equal("Invalid ISBN",num_length(num))
	end

	def test_number_not_ten_digits_letter_at_end
		num = "525789a"
		assert_equal("Invalid ISBN",num_length(num))
	end

	def test_number_not_ten_digits_letters_not_at_end
		num = "65b32c56v7892"
		assert_equal("Invalid ISBN",num_length(num))
	end

	def test_number_with_ten_digits_letter_at_end
		num = "653256789a"
		assert_equal("Invalid ISBN",num_length(num))
	end

	def test_number_with_ten_digits_plus_letters_not_at_end
		num = "65b32c567893"
		assert_equal("Invalid ISBN",num_length(num))
	end

	def test_number_not_ten_digits_with_parentheses
		num = "496(25)36"
		assert_equal("Invalid ISBN",num_length(num))
	end

	def test_number_with_ten_digits_plus_parentheses
		num = "496(25)36859"
		assert_equal("Invalid ISBN",num_length(num))
	end

	def test_number_not_ten_digits_with_symbols
		num = "9$8&25%47"
		assert_equal("Invalid ISBN",num_length(num))
	end

	def test_number_with_ten_digits_plus_symbols
		num = "98&25$47@6%548"
		assert_equal("Invalid ISBN",num_length(num))
	end

	def test_number_not_ten_digits_with_symbols_and_x_at_end
		num = "9$8&2547x"
		assert_equal("Invalid ISBN",num_length(num))
	end

	def test_number_with_ten_digits_plus_symbols_x_at_end
		num = "9%8&25$47@654x"
		assert_equal("Invalid ISBN",num_length(num))
	end

	def test_number_not_ten_digits_with_symbols_x_not_at_end
		num = "8$254x67#S898"
		assert_equal("Invalid ISBN",num_length(num))
	end

	def test_number_with_ten_digits_with_symbols_x_not_at_end
		num = "8$254x67#5898"
		assert_equal("Invalid ISBN",num_length(num))
	end

	def test_num_cap_function_x_at_end
		num = "653256789x"
		assert_equal([653256789],num_cap(num))
	end

	def test_num_cap_function_x_not_at_end
		num = "8254x67898"
		assert_equal("Invalid ISBN",num_cap(num))
	end

	def test_num_cap_number_not_ten_digits
		num = "982547"
		assert_equal("Invalid ISBN",num_cap(num))
	end

	def test_num_cap_function_not_ten_digits_with_parentheses
		num = "496(25)36"
		assert_equal("Invalid ISBN",num_cap(num))
	end

	def test_num_cap_function_not_ten_digits_with_symbols
		num = "9$8&25%47"
		assert_equal("Invalid ISBN",num_cap(num))
	end

	def test_num_cap_function_with_ten_digits_plus_parentheses
		num = "496(25)36859"
		assert_equal("Invalid ISBN",num_cap(num))
	end

	def test_num_cap_function_with_ten_digits_plus_symbols
		num = "98&25$47@6%548"
		assert_equal("Invalid ISBN",num_length(num))
	end
end