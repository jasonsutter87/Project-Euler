#A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. 
#For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

#A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

#As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24.
#By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. 
#However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be
#expressed as the sum of two abundant numbers is less than this limit.

#Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

####################################
##
##     Project Euler: Problem 23
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:    4,179,871
##
###################################
require "prime"

#Make and array with all number
all_nums  = (0..28123).to_a 

#create blank arrays for the abundant numbers
abundants = []


#cycle through the lowest abundant number through the highest possible integer
(12).upto((28123)){|x|
  # Check if number is prime. If it is prime, skip. 
  if Prime.prime?(x) != true
    #Find proper divisors for each number
    proper_divisors = (1..x).find_all { |i|  (x % i == 0)  && (i != x)}
    #add up all the divisors
    divisors_sum = proper_divisors.inject{|sum,y| sum + y }
    
    #check if the divisor sum is greater than the original number
    if divisors_sum > x 
      # add the number to the abundant number array
      abundants << x
    end
  end
}

#add up every combination of elements in the abundant array
sums = abundants.repeated_combination(2).map {|z| 
    z[0] + z[1]
}.uniq!


#subtract the array sums from the all number array
check_me = (all_nums - sums)


#add up every element in the final array check_me
sum = 0 
(0).upto(check_me.length  - 1) {|f|
    sum = sum + check_me[f]
    
}

# The Solution
p "The Solution is: " + sum.to_s