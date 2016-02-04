####################################
##
##     Project Euler: Problem 01
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
## 
##      Answer:  233,168
##
###################################


#If we list all the natural numbers below 10 that are multiples
#of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

#Find the sum of all the multiples of 3 or 5 below 1000.


# create a intitial count of 0, and sum of 0
count = 0
sum = 0 

#loop though the numbers 0 through  1000
while count < 1000
    #if count is a multiple of 3 add to sum 
    if count % 3 == 0
        sum = sum + count
    #else if count is a multiple of 5 add to sum 
    elsif count % 5 == 0
        sum = sum + count
    end
    count += 1
end

#the Solution
p "The Solution is: " + sum.to_s 
