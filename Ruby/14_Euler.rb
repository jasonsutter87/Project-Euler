####################################
##
##     Project Euler: Problem 14
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:    837,799
##
###################################
#The following iterative sequence is defined for the set of positive integers:

#n → n/2 (n is even)
#n → 3n + 1 (n is odd)

#Using the rule above and starting with 13, we generate the following sequence:

#13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
#It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms.
#Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

#Which starting number, under one million, produces the longest chain?

#NOTE: Once the chain starts the terms are allowed to go above one million.
target = 1000000
starting_num = 0
count = 0
highest = 0
longest_Length = 0

until target == 1
	#setting a start number
	starting_num = target
	#reset count to 0
	count = 0
	
	#Until starting_num = 1 dont stop looping
	until starting_num == 1
    	if starting_num.odd? == false
            #n → n/2 (n is even)
    		starting_num /= 2
    		count += 1
    	else
    		#n → 3n + 1 (n is odd)
    		starting_num = (starting_num *3) + 1
    		count += 1
    	end
	end
	
	# if count is larger than current longest length then set count as new highest
	if count > longest_Length
		highest = target
		longest_Length = count
	end
	target -= 1
end

#the Solution
p "The Solution is: " +  highest.to_s

