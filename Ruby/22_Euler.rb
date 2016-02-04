####################################
##
##     Project Euler: Problem 22
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:    871,198,282
##
###################################
#Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names,
# begin by sorting it into alphabetical order. Then working out the alphabetical value for each name,
# multiply this value by its alphabetical position in the list to obtain a name score.

#For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, 
# is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

#What is the total of all the name scores in the file?

#Initizial Count, place count and add a blank array for listed names
count = 0
placeCount = 0
listedNames = []
name = ""
start = true
letterCount = 0 
score = 0 

#open the file with the names on it, split each name with each comma
sorted = File.open("p022_names.txt","r").read.split(",").sort! { |a, b| a.casecmp(b) } .join


#loop until count greater than the amount of elements in sorted
while count < sorted.length
    #if the item in sorted starts with a " it is the start of a new name
    if sorted[count] == '"'
        if start == true
            #count how long the word is
            placeCount += 1
            start = false
        else
            #score each name
            start = true
            score = score + ( letterCount * placeCount) 
            letterCount = 0
            listedNames << name
            name = ""
        end
    else
        #score each Letter of the word
        if  sorted[count] == 'A'
            letterCount = letterCount + 1
            name << "A"
        elsif  sorted[count] == 'B'
            letterCount = letterCount + 2
            name << "B"
        elsif  sorted[count] == 'C'
            letterCount = letterCount + 3
            name << "C"
        elsif  sorted[count] == 'D'
            letterCount = letterCount + 4
            name << "D" 
        elsif  sorted[count] == 'E'
            letterCount = letterCount + 5
            name << "E"
        elsif  sorted[count] == 'F'
            letterCount = letterCount + 6
            name << "F"
        elsif  sorted[count] == 'G'
            letterCount = letterCount + 7
            name << "G"
        elsif  sorted[count] == 'H'
            letterCount = letterCount + 8
            name << "H"
        elsif  sorted[count] == 'I'
            letterCount = letterCount + 9
            name << "I"
        elsif  sorted[count] == 'J'
            letterCount = letterCount + 10
            name << "J"
        elsif  sorted[count] == 'K'
            letterCount = letterCount + 11
            name << "K"
        elsif  sorted[count] == 'L'
            letterCount = letterCount + 12
            name << "L"
        elsif  sorted[count] == 'M'
            letterCount = letterCount + 13
            name << "M"
        elsif  sorted[count] == 'N'
            letterCount = letterCount + 14
            name << "N"
        elsif  sorted[count] == 'O'
            letterCount = letterCount + 15
            name << "O"
        elsif  sorted[count] == 'P'
            letterCount = letterCount + 16
            name << "P"
        elsif  sorted[count] == 'Q'
            letterCount = letterCount + 17
            name << "Q"
        elsif  sorted[count] == 'R'
            letterCount = letterCount + 18
            name << "R"
        elsif  sorted[count] == 'S'
            letterCount = letterCount + 19
           name << "S"
        elsif  sorted[count] == 'T'
            letterCount = letterCount + 20
            name << "T"
        elsif  sorted[count] == 'U'
            letterCount = letterCount + 21
            name << "U"
        elsif  sorted[count] == 'V'
            letterCount = letterCount + 22
            name << "V"
        elsif  sorted[count] == 'W'
            letterCount = letterCount + 23
            name << "W"
        elsif  sorted[count] == 'X'
            letterCount = letterCount + 24
            name << "X"
        elsif  sorted[count] == 'Y'
            letterCount = letterCount + 25
            name << "Y"
        else
            letterCount = letterCount + 26
            name << "Z"
        end
    end
    #advance the count
    count += 1
end

#Final solution
p "The Solution is: "+ score.to_s
