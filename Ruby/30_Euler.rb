####################################
##
##     Project Euler: Problem 30
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:  443839  
##
###################################
#Surprisingly there are only three numbers that can be written as the sum of fourth powers
#of their digits:

#1634 = 14 + 64 + 34 + 44
#8208 = 84 + 24 + 04 + 84
#9474 = 94 + 44 + 74 + 44
#As 1 = 14 is not a sum it is not included.

#The sum of these numbers is 1634 + 8208 + 9474 = 19316.

#Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.
$score = []
def sum_of_fifth_powers_of_their_digits(num)
    list = []
    sum = 0 
    count = 0
    while count < num.to_s.length
        sum = sum +  (num.to_s[count]).to_i ** 5
        count += 1
    end
    if (num == sum) && (sum != 1 ) && ( sum != 0 )
        a = sum
        $score << a
    end
end

count = 0
while count < 295245
        sum_of_fifth_powers_of_their_digits(count)
    count += 1
end

final = 0 
count = 0 
while count < $score.length
    final = final + $score[count]
    count += 1
end
p "The Solution is: " + final.to_s