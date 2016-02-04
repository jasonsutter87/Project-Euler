####################################
##
##     Project Euler: Problem 15
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:    137,846,528,820
##
###################################
#Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, 
#there are exactly 6 routes to the bottom right corner.


#How many such routes are there through a 20×20 grid?

#Set grid size to 20
number = 20 

#creat a method factorial that takes 1 argument
def factorial(n)
 #if n equals zero than its its 1 or n * the method 
  if n == 0
    1
  else
    n * factorial(n-1)
  end
end

#grid size = (n! * n!)! /  n! * n! 
p "The Solution is: " + (factorial((number + number)) / ( factorial(number) * factorial(number) )).to_s