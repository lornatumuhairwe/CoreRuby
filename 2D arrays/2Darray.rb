# A 2D array is simply an array nested inside another array
# You can loop through elements in an array with nested iterators
# with built in methods like flatten, you can transform a nested array to a 1D array

values = Array[[10, 20, 30], [40, 50, 60]]
print values, "\n" # [[10, 20, 30], [40, 50, 60]]

puts values
# 10
# 20
# 30
# 40
# 50
# 60

print values.flatten, "\n" # [10, 20, 30, 40, 50, 60]

#looping through the values of an array
values.each do |value|
  value.each do |number|
    puts number
  end
  puts '---'
end

# create a new nested array with the push
new_array = []

first_subarray = []
first_subarray.push(1)
first_subarray.push(2)
first_subarray.push(3)

new_array.push(first_subarray)

second_subarray = []
second_subarray.push(10)
second_subarray.push(20)
second_subarray.push(30)

new_array.push(second_subarray)

print new_array, "\n"

# extract elements from a 2D array
puts new_array[0][1] # the second element in the first row
puts new_array[1][2] # the third element in the second row


# access each cell in a 2D array by indexes

indexes_array = [["A", "B", "C"], ["D", "E", "F"], ["G", "H", "I"]]
indexes_array.each_index do |i|
  sub_array = indexes_array[i]
  sub_array.each_index do |x|
    puts String(i) << ' ' << String(x) << '... ' << indexes_array[i][x]
  end
end

# for further reference, check out this link
# https://www.dotnetperls.com/2d-ruby
#