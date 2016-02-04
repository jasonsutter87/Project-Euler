####################################
##
##     Project Euler: Problem 07
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:    104,743
##
###################################
#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

#What is the 10001st prime number?


#use Prime class
require 'prime'

#list out 0 - 10,001
primes = Prime.first 10001

#the Solution is the last item in the primes array
p "The Solution is: " + primes[-1].to_s

