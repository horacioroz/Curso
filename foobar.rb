print "Up to which number you want to display? : "
upto = gets.chomp.to_i

numbers = (1..upto).to_a

def foobar(num)
	# puts num
	num.each do |n| n.to_i
			reminder_when_divided_by_3 = n % 3
			# puts reminder_when_divided_by_3
			reminder_when_divided_by_5 = n % 5
			# puts reminder_when_divided_by_5
			if reminder_when_divided_by_3 == 0 && reminder_when_divided_by_5 != 0
				n = "Foo"
			elsif reminder_when_divided_by_5 == 0 && reminder_when_divided_by_3 !=0 
				n = "bar"
			elsif reminder_when_divided_by_3 == 0 && reminder_when_divided_by_5 == 0
				n = "Foobar"
			else
				n	
			end	
		print "#{n} "
	end
end		

foobar(numbers)