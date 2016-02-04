####################################
##
##     Project Euler: Problem 20
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:   648 
##
###################################
#n! means n × (n − 1) × ... × 3 × 2 × 1

#For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
#and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

#Find the sum of the digits in the number 100!

#set count to 100 and sum of 1
count = 100
factorial = 1
#loop while count is larger than 1 do this...
while count >= 1 
    
    factorial = factorial * count
    count -= 1
end

count = 0
sum = 0 
while count < factorial.to_s.length
    sum = sum + factorial.to_s[count].to_i
    count += 1
end

p "The Solution is: " + sum.to_s