####################################
##
##     Project Euler: Problem 19
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:   171 
##
###################################
#You are given the following information, but you may prefer to do some research for yourself.

#1 Jan 1900 was a Monday.
#Thirty days has September,
#April, June and November.
#All the rest have thirty-one,
#Saving February alone,
#Which has twenty-eight, rain or shine.
#And on leap years, twenty-nine.
#A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
#How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?


#Initiailize day in a year, count, year, count2, and sunday count
days_in_span = 36500
count = 1
year = 1900
count2 = 0
sundayCount = 0 


# loop while count less than or equal to days in the year 
while count <= days_in_span
    #checks when the count startif the year is 1900 do this. 
    if (year == 1900)
        #if the count is a sunday and if count start on the first of the month
        if (count % 7 == 0) && (count == 1 ||count == 31 ||count == 60 ||count == 91 ||count == 121 ||count == 152 ||count == 182 ||count == 213 ||count == 244  ||count == 274 ||count == 305  ||count == 335 )
            #advance sunday count
            sundayCount = sundayCount +1
         end
   #check if it is a leap year using the same logic
    elsif ( year % 4 == 0) && (year != 1900)
        if (count % 7 == 0) && (count == (1 + count2) ||count == (31 + count2) ||count == (61 + count2) ||count == (92 + count2) ||count == (122 + count2) ||count == (153 + count2) ||count == (183 + count2) ||count == (214 + count2) ||count == (245 + count2) ||count == (275 + count2) ||count == (306 + count2) ||count == (336 + count2))
            sundayCount = sundayCount +1
         end
        
    else
        if (count % 7 == 0) && (count == (1 + count2) ||count == (31 + count2) ||count == (60 + count2) ||count == (91 + count2) ||count == (121 + count2) ||count == (152 + count2) ||count == (182 + count2) ||count == (213 + count2) ||count == (244 + count2) ||count == (274 + count2) ||count == (305 + count2) ||count == (335 + count2))
            sundayCount = sundayCount +1
         end
    end
     
     #if the count is the beginning of the new year, do this.   
    if count % 365 == 0
        #advance the year
        year = year += 1
        #advance count2 by a year
        count2 = count2 + 365 
    end
    #advance count
    count += 1
end


#the Solution 
p "The Solution is: "+ sundayCount.to_s

