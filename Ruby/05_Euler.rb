####################################
##
##     Project Euler: Problem 05
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:   232,792,560
##
###################################
#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


#Make a Method that with take in a number and checks if it is evenly divisible by all of the numbers from 1 to 20.
$arr = [] 

def smallest_positive(x)
    if x % 1 == 0 &&
        x % 2 == 0 &&
        x % 3 == 0 &&
        x % 4 == 0 &&
        x % 5 == 0 &&
        x % 6 == 0 &&
        x % 7 == 0 &&
        x % 8 == 0 &&
        x % 9 == 0 &&
        x % 10 == 0 &&
        x % 11 == 0 && 
        x % 12 == 0 &&
        x % 13 == 0 &&
        x % 14 == 0 &&
        x % 15 == 0 &&
        x % 16 == 0 &&
        x % 17 == 0 &&
        x % 18 == 0 &&
        x % 19 == 0 &&
        x % 20 == 0
    
        if $arr == [] && (x != 0 )
            $arr << x
        end
    end
end


#Count from 0 up to 500000000 and run our
count = 0 
while count < 500000000
    smallest_positive(count)
    count += 1
end

p "The Solution is: " +  $arr[0].to_s 