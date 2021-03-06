####################################
##
##     Project Euler: Problem 25
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:  4,782  
##
###################################
#The Fibonacci sequence is defined by the recurrence relation:

#Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
#Hence the first 12 terms will be:

#F1 = 1
#F2 = 1
#F3 = 2
#F4 = 3
#F5 = 5
#F6 = 8
#F7 = 13
#F8 = 21
#F9 = 34
#F10 = 55
#F11 = 89
#F12 = 144
#The 12th term, F12, is the first term to contain three digits.

#What is the index of the first term in the Fibonacci sequence to contain 1000 digits?

#add the first few items the Fibonacci sequence to the fib array
fib = []
a = 0 
fib << a
b = 1
fib << b
count = 0
digits = 1000
fibLength = 0 

#loop fibLength until it is greater than 1000
until fibLength >= digits
    #add the next Fibonacci number to array
    nextFib = fib[count] + fib[count + 1]
    fib << nextFib
    b = fib.last.to_s
    fibLength =  b.length
    count += 1
end

#the Solution
p "The Solution is: " + (count + 1).to_s
