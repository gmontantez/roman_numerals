def divide(num1,num2)
	num1 / num2
end

def multiply(num1,num2)
	num1 * num2
end

def num_convert_update(num_to_convert,key)
#the parameter is the integer being tested divided by 
# each key element in roman_numbers list of key=>value
# to obtain the remainder(indicated by modulus '%')
 	num_to_convert % key
end

def roman_numerals(num_to_convert)
#the parameter is the integer being tested that 
# will be converted into a roman numeral

#when iterating over the key=>value elements in line 
# it begins at the top and moves down the list
	roman_numbers = {  	
		# 1000 => "M",  
		# 900 => "CM",  
  # 		500 => "D",  
  # 		400 => "CD",
  # 		100 => "C",  
  # 		90 => "XC",  
  # 		50 => "L",  
  # 		40 => "XL",  
    	10 => "X",  
    	9 => "IX",  
    	5 => "V",  
    	4 => "IV",  
    	1 => "I",  
          
  }
	if num_to_convert.class == Fixnum
		#provide empty string to push 'mult_str'
		# into below equal to 'roman'
		roman = ""
		#below: iterate over key(integer) and value(letter) in
		# 'roman_numbers' list of key=>value pairs 
    	roman_numbers.each do |key, letter| 
    		p "this is the letter #{letter}"
    		p "this is the key #{key}"
    		p "this is num_to_convert #{num_to_convert}"
 			#below: divide the key(integer) to convert by each
 			# key element of the 'roman_numbers' list
 			return_of_div = divide(num_to_convert, key)
 			p "return_of_div return #{return_of_div}"
 			#'return_of_div' will be '0' for each iteration
 			# except for when the 'num_to_convert' is same as 
 			# the 'key', then it will return '1' instead
 			# (Example: Converting 10 to "X" is 10/10=1, whereas
 			# 10/40=0)
 			
 			#below: multiply the 'letter' being iterated over 
 			# and the 'return_of_div' (which is either '1' or '0')
 			mult_str = multiply(letter, return_of_div)
 			p "this is mult_str #{mult_str}"
 			#'mult_str' will be the roman numeral 
 			# (Example: "X"*1="X", whereas "X"*0="" 
 			#  anything multiplied by '0' equals '0') 

    		#below: push the 'mult_str' into roman when iterating
    		# over each key=>value pair 
    		roman << mult_str
    		p "this is roman #{roman}"
    		#(Example: "X" is pushed into ""(roman) when 
    		# 'mult_str' is "X", whereas "" is pushed into ""
    		# (roman) when 'mult_str' is "")
    		p "----------------"
    		#below: redefine 'num_to_convert' using modulus '%'
    		num_to_convert = num_convert_update(num_to_convert,key)
    		p "this is the num_to_convert #{num_to_convert}"
    		#'num_to_convert' becomes the remainder of dividing 
    		# initial 'num_to_convert' by the key(integer) element
    		#(Example: 10%10=0, in other words 10/10=1 with a
    		# remainder of '0')
    		#the 'num_to_convert' is redefined to '0' from '10'
      		end
    		#below: 'roman' is the final result after all 
    		# key=>value pairs have been iterated through
    		roman
    		# p "this is roman(final converted answer) #{roman}"
			#(Example: '10' is now converted to "X")
	else	 
    		
		empty_array = []
		roman_convert = 0
		array = num_to_convert.split(//)
		p "this is num_to_convert#{num_to_convert}"
		array.each do |item|
		roman_convert += roman_numbers.key(item)
		p "this is roman_convert#{roman_convert}"
		end
		roman_convert
	end
		
end




