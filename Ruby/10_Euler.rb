####################################
##
##      Project Euler: Problem 10
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:   142,913,828,922 
##
###################################
#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

#Find the sum of all the primes below two million.

#use the prime class
require "prime"

#start count and set the sum to 0 
sum = 0 
count = 0 

#loop if the count is less then 2 million 
while count < 2000000
    #if the count is a prime number continue
    if Prime.prime?(count) == true
        #Sum up the numbers
        sum = sum + count
    end
    #advance the count
    count += 1 
end

#The Solution
p "The Solution is: " +  sum.to_s
