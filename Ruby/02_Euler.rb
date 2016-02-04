####################################
##
##     Project Euler: Problem 02
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:   4,613,732
##
###################################
#Each new term in the Fibonacci sequence is generated by adding the previous two terms.
#By starting with 1 and 2, the first 10 terms will be:

#1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

#By considering the terms in the Fibonacci sequence whose values
# do not exceed four million, find the sum of the even-valued terms.



#Add a blank array for the the Fibonacci sequence
fib = []
#Add the first two elements to the new Fibonacci array
a = 0 
fib << a 
b = 1
fib << b


#Check if the last item in the Fibonacci array is smaller or equal to 4000000
countMe = 0 
count = 0 
while fib.last <= 4000000
    #sum up the array 
    nextFib = fib[count] + fib[count + 1]
    fib << nextFib
    #checking the last item is even
    if fib[-1] % 2 == 0
        countMe = nextFib + countMe
    end
    count += 1
end

#The solution
p "The Solution is: "  + countMe.to_s
