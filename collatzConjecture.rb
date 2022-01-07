#!/usr/bin/ruby

#-----------------------------------------------#									
#	Developer -- Shelby Rutland					
#	Date ------- March 15, 2021					
#-----------------------------------------------#

def collatz(n, arr = []) # Compute the terms of the sequence 
	while n != 1
		arr << n
		n = n.even? ? n / 2 : n * 3 + 1 
	end
	arr.push(1) # Stop when the sequence reaches 1
end

def main
	print "First term ------- " # Prompt the user to enter the first number
	n = gets.chomp.to_i
	while n != 0
		arr = collatz(n)
		print "Number of terms -- ", arr.count # Output the count when the sequence is completed
		print "\nLargest term ----- ", arr.max # Output the highest valued term
		puts "\n\n"
		main # Repeat as long as the user wishes
	end
	exit # Enter the number 0 to make the program stop
end

main