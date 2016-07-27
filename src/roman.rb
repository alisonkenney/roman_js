def romanize(arabic_numeral)
	roman_numeral = ''
	if arabic_numeral < 4
		roman_numeral = 'I' * arabic_numeral
	elsif arabic_numeral == 4
		roman_numeral = "IV"
	elsif arabic_numeral == 5
		roman_numeral = "V"	
	elsif arabic_numeral < 9
		remainder = (arabic_numeral - 5)
		roman_numeral = "V" + ("I" * remainder)	
	elsif arabic_numeral == 9
		roman_numeral = "IX"
	elsif arabic_numeral == 10
		roman_numeral = "X"
	elsif arabic_numeral < 40
		times = (arabic_numeral/10).floor
		remainder = arabic_numeral % 10
		roman_numeral = ("X" * times) + (romanize(remainder))
	elsif arabic_numeral < 50
		remainder = (arabic_numeral - 40)
		roman_numeral = "XL" + (romanize(remainder))
	elsif arabic_numeral < 90
		remainder = (arabic_numeral - 50)
		roman_numeral = "L" + (romanize(remainder))
	elsif arabic_numeral < 100
		remainder = (arabic_numeral - 90)
		roman_numeral = "XC" + (romanize(remainder))
	elsif arabic_numeral < 400
		times = (arabic_numeral/100).floor
		remainder = arabic_numeral % 100
		roman_numeral = ("C" * times) + (romanize(remainder))
	elsif arabic_numeral < 500
		times = (arabic_numeral/400).floor
		remainder = arabic_numeral % 400
		roman_numeral = ("CD" * times) + (romanize(remainder))
	elsif arabic_numeral < 900
		times = (arabic_numeral/500).floor
		remainder = arabic_numeral % 500
		roman_numeral = ("D" * times) + (romanize(remainder))
	elsif arabic_numeral < 1000
		times = (arabic_numeral/900).floor
		remainder = arabic_numeral % 900
		roman_numeral = ("CM" * times) + (romanize(remainder))
	else
		times = (arabic_numeral/1000).floor
		remainder = arabic_numeral % 1000
		roman_numeral = ("M" * times) + (romanize(remainder))		
	end
end
