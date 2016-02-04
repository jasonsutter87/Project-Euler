####################################
##
##     Project Euler: Problem 41
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:  7652413
##
###################################
#We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once.
#For example, 2143 is a 4-digit pandigital and is also prime.

#What is the largest n-digit pandigital prime that exists?
require "prime"
array = [1,2,3,4,5,6,7,8,9]

$cool_primes = []
def has_pandigital_prime? (arr)
    check = arr.permutation(arr.length).to_a
    check.each_index {|x| 
        if Prime.prime?(check[x].join.to_i) != false
            $cool_primes << check[x].join.to_i
        end
    }
end

has_pandigital_prime? (array)

while $cool_primes.sort!.last == nil
    array.delete_at(-1)
    has_pandigital_prime? (array)
end
p "The Solution is: "  + $cool_primes.sort!.last.to_s


