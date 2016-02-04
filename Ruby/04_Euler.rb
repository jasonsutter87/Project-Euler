####################################
##
##     Project Euler: Problem 04
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:   906,609
##
###################################
#A palindromic number reads the same both ways. The largest palindrome made from the product
# of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

#set up count and a blank array for palindrome
count = 100
palindrome = []

#Check if count is less then 999
while count < 999
    #Set count1 too 100,
    #Check if count1 is less then 999
    count1 = 100
    while count1 < 999
        
        product = (count * count1)
        test_product = product.to_s
        if test_product.length == 6
            if (test_product[0] == test_product[-1]) && (test_product[1] == test_product[-2]) && (test_product[2] == test_product[-3])
                 palindrome << test_product
            end
        end
        count1 += 1
    end
    count1 = 100
    count += 1
end

p "The Solution is: "  + palindrome.sort {|a, b| a <=> b }.last.to_s 