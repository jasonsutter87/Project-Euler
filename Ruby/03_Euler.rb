####################################
##
##     Project Euler: Problem 03
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:   6,857
##
###################################

#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?
require 'prime'

#target number
target = 600851475143

#set count to 1 and a blank array for the target list
count = 1
theList = []

#while count is less or even to the target number Check if the number is prime
while count <=  target
    if target % count == 0
        if (Prime.prime?(count) == true) && (count != 1)
            #if the number is prime add that number to the target list
            if theList[0] == nil
                theList << count
            elsif count > theList[-1]
                theList << count
            end
        elsif count != 1
            count = target
        end
    end
    count += 1
end

#the solution
p "The Solution is: " +  theList.last.to_s