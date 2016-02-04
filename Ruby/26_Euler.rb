####################################
##
##     Project Euler: Problem 26
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:   983 
##
###################################
#A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions with denominators 2 to 10 are given:

#/2	= 	0.5
#1/3	= 	0.(3)
#1/4	= 	0.25
#1/5	= 	0.2
#1/6	= 	0.1(6)
#1/7	= 	0.(142857)
#1/8	= 	0.125
#1/9	= 	0.(1)
#1/10	= 	0.1
#Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen that 1/7 has a 6-digit recurring cycle.

#Find the value of d < 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.

$highest = [0]
$value = [0]
$start_Value = $highest.last 

def recurring(number) 
    arr = []
    num = 1
    
    $start_Value = number
    until( arr != [] ) && (arr.index(((num) % (number))) != nil) 
        if (arr.index(((num) % (number))) == nil) 
            if num == 0
                $highest << $highest.last
                break
            else
                arr << num
                num  = ((num) % (number)) * 10
                a = arr.index(num)
                if a != nil
                    break
                end

            end
        end
    end
    
    if  num != 0 
        current_length =  arr.length
        if current_length >= $highest.last 
             $highest << current_length
             $value << number 
        end 
    end
end

count = 2
while count <= 1000
    recurring(count)
    count += 1
end

p "The Solution is: " + $value.last.to_s