@fruits = Array.new

def continue
	print "Do you want add another fruit ? Y/N :"
	another = gets.chomp
	if another.downcase == "y"
		adding
	else
		eating
		puts "Thank you for using our apps. Bye ...!!!!"
	end
end

def adding
	print "Which fruit you like ? : "
	fruit = gets
	@fruits << fruit
	continue
end

def eating
	@fruits.each do |fruit|
		fruit_selected = fruit
		puts "Om nom nom #{fruit_selected}"
	end
end

adding