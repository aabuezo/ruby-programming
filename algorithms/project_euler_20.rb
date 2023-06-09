# https://projecteuler.net/problem=20

# n! means n × (n − 1) × ... × 3 × 2 × 1
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
# Find the sum of the digits in the number 100!

# p (1..100).inject(:*).to_s.split(//).map { |n| n.to_i }.inject(:+)

# shorter form using &
p (1..100).inject(:*).to_s.split(//).map(&:to_i).inject(:+)

