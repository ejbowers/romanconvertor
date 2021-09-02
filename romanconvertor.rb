
def fromRoman(romanNumber)
	value = 0
	bValue = 0
	total = 0
	if romanNumber =~ /[a-z]/
		raise TypeError.new("Capital Letters ONLY!")
	end
	romanNumber.each_char do |num|
		if num = "M"
			value = 1000
		elsif num = "D"
		value = 500
		elsif num = "C"
			value = 100
		elsif num = "L"
			value = 50
		elsif num = "X"
			value = 10
		elsif num = "V"
			value = 5
		elsif num = "I"
			value = 1
		else
			raise TypeError.new("Invalid Input! Roman Numerals ONLY!")
		end
		if value > bValue
			total += value-bValue-bValue
		elsif bValue <= value
			total += value
		end
		bValue = value
	end
	raise NotImplementedError
end

def toRoman(arabicNumber)
	value = ""
	num = arabicNumber
	if arabicNumber > 3999
		raise RangeError.new("Max Value of 3999 ONLY!")
	else
	while num > 0
		if num % 1000 > 0
			value += "M"
			num -= 1000
		elsif num % 900 == 1
			value += "CM"
			num -= 900
		elsif num % 500 > 0
			value += "D"
			num -= 500
		elsif num % 400 == 1
			value += "CD"
			num -= 400
		elsif num % 100 > 0
			value += "C"
			num -= 100
		elsif num % 90 == 1
			value += "XC"
			num -= 90
		elsif num % 50 > 0
			value += "L"
			num -= 50
		elsif num % 40 == 1
			value += "XL"
			num -= 40
		elsif num % 10 > 0
			value += "X"
			num -= 10
		elsif num % 9 == 1
			value += "IX"
			num -= 9
		elsif num % 5 > 0
			value += "V"
			num -= 5
		elsif num % 4 == 1
			value += "IV"
			num -= 4
		elsif num % 1 > 0
			value += "I"
			num -= 1

		end
	end
	end
	raise NotImplementedError
end