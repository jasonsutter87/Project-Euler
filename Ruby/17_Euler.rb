####################################
##
##     Project Euler: Problem 17
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:  21124  
##
###################################
#If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are
#3 + 3 + 5 + 4 + 4 = 19 letters used in total.

#If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

#NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and
# 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

#Write out hashes numbers for words
ones = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
teens = {10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen" }
tens = {1 => "ten", 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}
hundred = ["hundred"]
thousand = ["thousand"]
custom = [ "-", "and", " "]


#Initiailize sum and count
sum = 0 
count = 1

#Loop count if it is less our equal to 1000
while count <= 1000
    #if count is 1..9 and count is not 0 
    if (count.to_s.length == 1) && (count != 0)
        #add up the sum of the word values 1..9
        sum = sum + (ones[count]).length 
    # if the count is 10..19
    elsif count.to_s.length == 2
        #if the count is less than 19 do this 
        if count <= 19
            sum = sum + (teens[count]).length 
        #if the count is a multiple of 10 do this
        elsif count % 10 == 0 
            sum = sum + (tens[count.to_s[0].to_i]).length  
        else
            sum = sum + (tens[count.to_s[0].to_i] + ones[(count % 10)] ).length  
        end
    elsif count.to_s.length == 3
    
    #if the count is a multiple of 100 do do 
    try =  count % 100 
    #same logic for 100...119 , 200..219.
    if try  <= 19
        if try <= 9 && try != 0
            sum = sum + (ones[(count % 1000).to_s[0].to_i] + hundred[0]  + custom[1] + ones[(count % 10).to_s[0].to_i].to_s).length 
        elsif try != 0 && try != 10
            sum = sum + (ones[(count % 1000).to_s[0].to_i]  + hundred[0]  + custom[1] + teens[count % 100].to_s ).length  
        end
        if count % 10 == 0
            if count % 100 == 00
                sum = sum + (ones[(count % 1000).to_s[0].to_i]  + hundred[0]).length 
            else
                sum = sum + (ones[(count % 1000).to_s[0].to_i]  + hundred[0]  + custom[1]  + tens[(count % 1000).to_s[0].to_i]).length
            end
        end 
    elsif try  <= 99 && try >= 20
        if count % 10 == 0 
            sum = sum + (ones[(count % 1000).to_s[0].to_i]  + hundred[0]  + custom[1] +tens[count.to_s[0].to_i]).length
        else
            sum = sum + (ones[(count % 1000).to_s[0].to_i] + hundred[0]  + custom[1]  +  tens[(count % 1000).to_s[1].to_i]  + ones[(count % 10).to_s[0].to_i].to_s).length 
        end 
    end
    #if count is 1000 do this
    elsif count == 1000
        sum = sum + (ones[(count % 10000).to_s[0].to_i]  + thousand[0]).length 
    else 
    end
    count += 1
end

#The Solution 
p "The Solution is: " + sum.to_s