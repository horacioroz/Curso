def continue
	print "Do you want to make another convertion ? Y/N :"
	another = gets.chomp
	if 
		another === "y"||"Y"
		puts another
		slect
	else
		"Thank you for using our apps. Bye ...!!!!" 
	end
end
def question (q)
	print "Enter the #{q} to convert : "
	to_convert = gets.to_f
	return to_convert
end	

def slect
	puts "1.- Inches to Centimeters"
	puts "2.- Centimeters to Inches"
	puts "3.- Pounds to Kilos"
	puts "4.- Kilos to Pounds"
	puts "5.- Fahrenheit to Celcius"
	puts "6.- Celcius to Fahrenheit"
	print "Select what unit you want to convert : "
	selection = gets.to_i

	if 
		selection > 6 
		puts "Incorrect selection, you have to choose between 1 and 6"
		slect
	end	

	selected = {1 => ['length', 2.54], 2 => ['weight', 0.453592], 3 => ['temperature', 1.8, 32] } 
	result = case selection

		when 1
			result = question(selected[1].first)*(selected[1].last)		
		when 2
			result = question(selected[1].first)/(selected[1].last)
		when 3
			result = question(selected[2].first)*(selected[2].last)
		when 4
			result = question(selected[2].first)/(selected[2].last)
		when 5
			result = (question(selected[3].first)-(selected[3].last))/(selected[3].slice(1))
		when 6
			result = (question(selected[3].first)*(selected[3].slice(1)))+(selected[3].last)
		end	
	puts result	
end

slect
continue

# Entiendo que tengo un error en la estructura de control del loop para que en tanto que quieras vuelva a
# comenzar el proceso. Estuve probando, pero no sé como hacerlo. 
# En realidad esto es más de lo que pide el ejercicio original.
# Escucho críticas y comentarios.