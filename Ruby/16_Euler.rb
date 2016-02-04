####################################
##
##     Project Euler: Problem 16
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:    1366
##
###################################
#2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

#What is the sum of the digits of the number 2^1000?

startingNum = (2 ** 1000)
count = 0
sum = 0

#loop count is less than starting number 
while count < startingNum.to_s.length
    #Sum up the number
    sum = sum  + startingNum.to_s[count].to_i
    #advance the count
    count += 1
end

#the solution
p "The Solution is: " + sum.to_s