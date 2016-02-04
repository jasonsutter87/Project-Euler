####################################
##
##     Project Euler: Problem 27
##
##      Jason Sutter
##      Jasonsutter87@gmail.com
##
##      Answer:    -59,231
##
###################################
#Euler discovered the remarkable quadratic formula:

#n² + n + 41

#It turns out that the formula will produce 40 primes for the consecutive values n = 0 to 39.
# However, when n = 40, 402 + 40 + 41 = 40(40 + 1) + 41 is divisible by 41, and certainly when n = 41, 41² + 41 + 41 is clearly divisible by 41.

#The incredible formula  n² − 79n + 1601 was discovered, which produces 80 primes for the consecutive values n = 0 to 79.
#The product of the coefficients, −79 and 1601, is −126479.

#Considering quadratics of the form:

#n² + an + b, where |a| < 1000 and |b| < 1000

#where |n| is the modulus/absolute value of n
#e.g. |11| = 11 and |−4| = 4
#Find the product of the coefficients, a and b, for the quadratic expression that
#produces the maximum number of primes for consecutive values of n, starting with n = 0.

#  starting with n = 0.
require "prime"

arr = (-1000..1000).to_a

$consecutive = [0]
$a = []
$b = []

def testMe(a , b)
  count = 0 
  while Prime.prime?((count ** 2 ) + (count * a)  + (b) ) == true
    count += 1
  end
  
  if count > $consecutive[-1]
     $consecutive << count
     $a << a 
     $b << b
  end
  
end


arr.repeated_combination(2){|z| 
testMe( z[0], z[1])
}

answer = ($a.last * $b.last)

p "The Solution is: " + answer.to_s 