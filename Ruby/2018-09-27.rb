#!/bin/ruby

require 'json'
require 'stringio'

# Complete the compareTriplets function below.
# def compareTriplets(a, b)
#     answer = []
#     aScore = 0
#     bScore = 0

#     index = 0 
#     while index < a.length
#         case a[index] <=> b[index]
#         when -1
#             bScore += 1
#         when 1
#             aScore += 1
#         end
#         index += 1
#     end

#     [aScore, bScore]
# end

# a = [17,28,30]
# b = [99,16,8]

# p compareTriplets(a,b)

# def plusMinus(arr)
#     positives = 0 
#     negatives = 0 
#     zeros = 0 
#     length = arr.length*1.0

#     arr.each do |el|
#         case
#         when el == 0
#             zeros += 1
#         when el > 0
#             positives += 1
#         when el < 0
#             negatives += 1 
#         end
#     end

#     p [(positives/length).round(6), (negatives/length).round(6), (zeros/length).round(6)]

# end

# a = [-4, 3, -9, 0, 4, 1]

# plusMinus(a)

def staircase(n)
    staircase_helper(n, 0)

end

def staircase_helper(size, tier)
    solution = ""
    1.upto(tier) do 
        solution += " "
    end
    tier.upto(size-1) do 
        solution += "#"
    end

    return solution if tier == size
    "#{staircase_helper(size, tier+1)}\n#{solution}"

end

puts staircase(3)