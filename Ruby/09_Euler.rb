####################################
##
##     Project Euler: Problem 09
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:    31,875,000    
##
###################################
#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

#a2 + b2 = c2
#For example, 32 + 42 = 9 + 16 = 25 = 52.

#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

#set a final target and Product that 
target = 1000
pythagoreanTripletProduct = 0 


# set count 1 and loop it until it is greater than or equal to the target
count1 = 1
while count1 <= ( target )
    # set count 2 and loop it until it is greater than or equal to the target
    count2 = 2
    while count2 <= ( target )
        # set count 3 and loop it until it is greater than or equal to the target
        count3 = 3
        while count3 <= ( target )
            #if count1, count2, count3 equals the target and (count1 is less than count2 and count2 is less than count3 ) do this V
            if (count1 + count2 + count3 ==  target) && (count1 < count2 && count2 < count3)
                
                a2 = (count1 ** 2)
                b2 = (count2 ** 2)
                c2 = (count3 ** 2)
                #find the pythagorean Triplet Product
                if (a2 + b2 == c2)
                    pythagoreanTripletProduct = count1 * count2 * count3
                end
            end
            count3 += 1
            #advance the count 3
        end
        count2 += 1
        #advance the count 2
     end
    count1 += 1
    #advance the count 1
end

p "The Solution is: " + pythagoreanTripletProduct.to_s