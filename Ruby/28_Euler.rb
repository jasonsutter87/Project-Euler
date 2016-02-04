####################################
##
##     Project Euler: Problem 28
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:    669,171,001
##
###################################
#Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:

#21 22 23 24 25
#20  7  8  9 10
#19  6  1  2 11
#18  5  4  3 12
#17 16 15 14 13

#It can be verified that the sum of the numbers on the diagonals is 101.

#What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?
# 3x3
count = 2
count2 = 1
num_by_num = 3
sum = 0 
until num_by_num == 1001

    a = ((count + count2 ) ** 2) # this  is the top right corner
    sum = sum + a
    num_by_num = ((2 * count2) + 1) # find the num X num grid size
    a = ((count + count2 ) ** 2) - (2 * count2)  # this  is the top left corner
    sum = sum + a
    a = ((count + count2 ) ** 2) - (4 * count2)  # this  is the bottom left corner
    sum = sum + a
    a = ((count + count2 ) ** 2) - (6 * count2)  # this  is the bottom right corner
    sum = sum + a
    count += 1
    count2 += 1
end
p "The Solution is: " + (sum + 1).to_s 