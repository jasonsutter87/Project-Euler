####################################
##
##     Project Euler: Problem 06
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:   25164150
##
###################################



#The sum of the squares of the first ten natural numbers is,

#1^2 + 2^2 + ... + 10^2 = 385
#The square of the sum of the first ten natural numbers is,

#(1 + 2 + ... + 10)^2 = 55^2 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

# Set up varibles: count, squares target, sumSquares
count = 1
squares = 0 
target = 100 
sumSquares = 0 

#loop through count and target, checking if count is smaller or equal to target
while count <= target
    #sum Squares
    squares =  squares + (  count ** 2 ) 
    count += 1
end

#loop through count and target, checking if count is smaller or equal to target
count = 1
while count <= target
    sumSquares = sumSquares + count
    count += 1
end

#Solution
score = (sumSquares ** 2)  - squares
p "The Solution is: "  + score.to_s
