####################################
##
##     Project Euler: Problem 24
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:   2,783,915,460
##
###################################
#A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

#012   021   102   120   201   210

#What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?


#add numbers to an array
numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8,  9]


#find the permutation of the items in the numbers array
permutation = numbers.permutation.to_a

#The Solution
p "The Solution is: "  + permutation[999999].join
