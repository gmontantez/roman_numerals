require "minitest/autorun"
require_relative "roman_numerals.rb"

class Roman_numberals_test < Minitest::Test
	def test_true_equals_true
		assert_equal(true,true)
	end

	def test_1_equals_I
		assert_equal("I",roman_numerals(1))
	end
	# def test_10_equals_X
	# 	assert_equal("X",roman_numerals(10))
	# end
end