####################################
##
##     Project Euler: Problem 37
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:  748317
##
###################################
#The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right,
#and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.

#Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

#NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

                
require "prime"

$cool_numbers_club = []
def is_truncatable?(num) 
    start_num = num 
    count = 1
    until count > start_num.length
        #checking left to right
        if Prime.prime?(num.to_i) == true
            a = num.split("")
            a.delete_at(0)
            if a[0] == "0"
                break
            end
            num = a.join
            if num.length == 1 && Prime.prime?(num.to_i) == true
                #checking right to left
                num = start_num
                count = 0
                until count > start_num.length
                    if Prime.prime?(num.to_i) == true
                        a = num.split("")
                        a.delete_at(-1)
                        num = a.join
                        if num.length == 1 && Prime.prime?(num.to_i) == true
                            $cool_numbers_club << start_num.to_i
                        end
                    else
                        break
                    end
                count += 1 
                end
            end
        else
            break
        end
    count += 1 
    end
end

count = 1
while count <= 1_000_000
    is_truncatable?(count.to_s)
count += 1
end

sum = 0
$cool_numbers_club.each_index {|j| sum = sum + $cool_numbers_club[j]}
p "The Solution is: "  + sum.to_s
