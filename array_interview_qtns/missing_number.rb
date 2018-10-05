# you are given an array of numbers from 1 to 100 that has one missing number
# Find the missing number

def missing_number(array, n)
  expected_sum = (n*(n + 1))/2
  array_sum = array.reduce(:+)
  expected_sum - array_sum
end

def missing_number2(array) # first 10 numbers
  expected_sum = 11 * 5
  array_sum = 0
  array.each do |num|
    array_sum + num
  end

  expected_sum - array_sum
end
sample = [1, 2, 3, 4, 5, 6, 8, 9, 10]
puts(missing_number2(sample))


# you can use set properties to get the repeated number.