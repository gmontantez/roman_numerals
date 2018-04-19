require "minitest/autorun"
require_relative "roman_numerals_final.rb"

class Roman_numerals_test < Minitest::Test
	def test_true_equals_true
		assert_equal(true,true)
	end
	def test_4_div_2
		assert_equal(2,divide(4,2))
	end
	def test_2_mult_2
		assert_equal(4,multiply(2,2))
	end
	def test_8_div_2
		assert_equal(4,divide(8,2))
	end
	def test_4_mult_2
		assert_equal(8,multiply(4,2))
	end
	def test_result_of_IV_IV_multiplied
		assert_equal("IVIV",multiply("IV",2))
	end
	def test_result_of_V_V_V_multiplied
		assert_equal("VVV",multiply("V",3))
	end
	def test_divisible_4_by_4
		assert_equal(0,num_convert_update(4,4))
	end
	def test_divisible_5_by_4
		assert_equal(1,num_convert_update(5,4))
	end
	def test_divisible_10_by_5
		assert_equal(0,num_convert_update(10,5))
	end
	def test_divisible_9_by_5
		assert_equal(4,num_convert_update(9,5))
	end
	def test_1_equals_I
		assert_equal("I",roman_numerals(1))
	end
	def test_10_equals_X
		assert_equal("X",roman_numerals(10))
	end
	def test_2_equals_II
		assert_equal(2,roman_numerals("II"))
	end
	def test_3_equals_III
		assert_equal(3,roman_numerals("III"))
	end
	def test_5_equals_V
		assert_equal(5,roman_numerals("V"))
	end
	def test_6_equals_VI
		assert_equal(6,roman_numerals("VI"))
	end

end

