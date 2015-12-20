
    # Build a new ruby script
    #     In the script, define a method called unique, which will accept an argument of an array.
    #     Have the method remove duplicate items from an array.
    #     For example, unique([1,2,3,2,1,6,9]) would return [1,2,3,6,9].
    #     Implement a version that uses the Array#uniq method.
    #     Implement a version that does not use the Array#uniq method. This version will loop through the input array and build an output array by pushing items on it, depending on whether or not it is included? in the array.

numbers = [1,2,3,4,5,6,7,8,9,9,8,7,6,6,6,5,4,2,2,2,23,25,25,11,11,]

numbers_without_duplicates = numbers.uniq.sort
print numbers_without_duplicates

def num_no_duplicates(numbers)
	no_duplicates = Array.new
	numbers.each do |num|
		unless no_duplicates.include?(num)
		   no_duplicates << num
		end
	end
	puts "#{no_duplicates.sort}"
end

num_no_duplicates(numbers)
