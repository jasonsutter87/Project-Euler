####################################
##
##     Project Euler: Problem 21
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:   31,626 
##
###################################
#Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
#If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

#For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284.
#The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

#Evaluate the sum of all the amicable numbers under 10000.


$superArray = []

def divisors(num)
    
    count = 1
    target = num
    sum1 = 0
    sum2 = 0
    sum = 0
    superSum = 0
    while count <= target
        if (target % count == 0) && (target != count)
            sum1 = sum1 + count
        end
        count += 1
    end
    count = 1
    while count <= sum1
        if (sum1 % count == 0) && (sum1 != count)
            sum2 = sum2 + count
        end
        count += 1
    end
    if (sum2 == target) && (sum1 != sum2)
        sum = sum + (sum1 + sum2)
        $superArray << sum
    end
end

count = 1

while count <= 10000
    divisors(count)
    count += 1
end

count = 0
sum = 0 
while count < $superArray.length
    sum = ( sum +  $superArray[count] / 2 )
    count += 1
end

p "The Solution is: "+ sum.to_s