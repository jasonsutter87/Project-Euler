####################################
##
##     Project Euler: Problem 35
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:  
##
###################################
#The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.

#There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

#How many circular primes are there below one million?
require "prime"

$circular_primes_arr = []

def circular_primes?(num) 
    start_num = num 
    count = 1
    check = 0 
    while count <= num.length
        a = num.split("")
        a.push(a.first)
        a.delete_at(0)
        num = a.join
        
        if Prime.prime?(num.to_i) == true 
            check += 1
            if check == num.length
                $circular_primes_arr << start_num
            end
        end
        count += 1
    end
end

count = 1
while count <= 1_000_000
    circular_primes?(count.to_s)
    count += 1
end

p "The Solution is: "  +  $circular_primes_arr.length.to_s