def divide(num1,num2)
	num1 / num2
end

def multiply(num1,num2)
	num1 * num2
end

def num_convert_update(num_to_convert,key)
	num_to_convert % key
end

def roman_numerals(num_to_convert)
	roman_numbers = {
	# 1000 => "M",  
 #     900 => "CM",  
 #     500 => "D",  
 #     400 => "CD",
 #     100 => "C",  
 #      90 => "XC",  
 #      50 => "L",  
 #      40 => "XL",  
      10 => "X",  
        9 => "IX",  
        5 => "V",  
        4 => "IV",  
        1 => "I",  
          
  }
	if num_to_convert.class == Fixnum
		roman = ""
    	roman_numbers.each do |key, letter|
    		p "this is the letter #{letter}"
    		p "this is the key #{key}"
    		p "this is num_to_convert #{num_to_convert}"
 			return_of_div = divide(num_to_convert, key)
 			p "return_of_div return #{return_of_div}"
 			mult_str = multiply(letter, return_of_div)
    		# roman << letter*(num_to_convert / key)
    		p "this is mult_str #{mult_str}"
    		roman << mult_str
    		p "this is roman #{roman}"
    		p "----------------"
    		num_to_convert = num_convert_update(num_to_convert,key)
    		p "this is the num_to_convert #{num_to_convert}"
    	end
    		roman 
    		p "this is roman(final converted answer) #{roman}"
	else
		roman = ""
	
		empty_array = []
		roman = 0
		array = num_to_convert.split(//)
		array.each do |item|
		roman += roman_numbers.key(item)
		# p "this is roman_convert#{roman_convert}"
		end
	end
		roman
end




