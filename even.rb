# In your existing even.rb file, build a new method that uses the is_even? method, 
# and determines if the number is divisible by 5 and also even.
# Call this method is_even_and_divisible_by_five? and have it return true or false.

def is_even?(n)
	reminder_when_divided_by_2 = n % 2

	if reminder_when_divided_by_2 == 0
		return true
	else
		return false
	end
end

def is_odd?(n)
	return ! is_even?(n)
end

def is_even_and_divisible_by_five?(n)
	reminder_when_divided_by_5 = n % 5
	if reminder_when_divided_by_5 == 0
	   is_even?(n)
	end
end

def question
print "Enter number to know if is divided by 5 and even :"
gets.to_f
end

puts is_even_and_divisible_by_five?(question)
