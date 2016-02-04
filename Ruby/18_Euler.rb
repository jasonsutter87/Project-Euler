####################################
##
##     Project Euler: Problem 18
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:    1074
##
###################################
#By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

#3
#7 4
#2 4 6
#8 5 9 3

#That is, 3 + 7 + 4 + 9 = 23.

#Find the maximum total from top to bottom of the triangle below:

#75
#95 64
#17 47 82
#18 35 87 10
#20 04 82 47 65
#19 01 23 75 03 34
#88 02 77 73 07 63 67
#99 65 04 28 06 16 70 92
#41 41 26 56 83 40 80 70 33
#41 48 72 33 47 32 37 16 94 29
#53 71 44 65 25 43 91 52 97 51 14
#70 11 33 28 77 73 17 78 39 68 17 57
#91 71 52 38 17 14 91 43 58 50 27 29 48
#63 66 04 68 89 53 67 30 73 16 69 87 40 31
#04 62 98 27 23 09 70 98 73 93 38 53 60 04 23

#NOTE: As there are only 16384 routes, it is possible to solve this problem by trying every route. However, Problem 67, is the same challenge with a triangle containing one-hundred rows; it cannot be solved by brute force, and requires a clever method! ;o)


large_triangle = 
"75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"


sums = []
arr = []
highest = []

#split triangle up after a line brake, and puts the string into an array
triangle_rows = large_triangle.split("\n")

#place array for each row
triangle_array = triangle_rows.collect! {|x| x.split(" ") }

#put each item in the rows into individual arrays 
triangle_array.each_index {|row_count| 
     triangle_array[row_count].map!{|y| Array[ y.to_i ] }
}

#Find out last line in triangle
answers = triangle_array[-1]
answers = answers.flatten 

#find out the height of the triangle
triangle_height = (triangle_array.length - 1)

#find out the next line in the triangle
next_line = triangle_array[triangle_height - 1].flatten


count = triangle_height
answers2 = []
#count down to 0 from triangle height
(triangle_height).downto(0) { |n|
    #count up the row
    (0).upto(triangle_height) { |b|
        if n >= 1 && (answers[b + 1] != nil)
        next_line2 = (triangle_array[n - 1].flatten)
            #check which element in the row is larger
            if (answers[b] <=> answers[b + 1]) == 1
                next_element = next_line2[b]
                answers2 << sum =  answers[b] + next_element
            else
                next_element = next_line2[b]
                answers2 << sum =  answers[b + 1] + next_element
            end
            highest << answers2
            #reset count
            if answers2.length == count
                answers = answers2
                answers2 = []
                count -= 1
            end
        end
    }
}

#The solution
solution = highest.last
p "The Solution is: " + solution[0].to_s