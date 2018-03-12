# solution to https://www.hackerrank.com/challenges/2d-array/problem
arr = [
  [1, 1, 1, 0, 0, 0],
  [0, 1, 0, 0, 0, 0],
  [1, 1, 1, 0, 0, 0],
  [0, 9, 2, -4, -4, 0],
  [0, 0, 0, -2, 0, 0],
  [0, 0, -1, -2, -4, 0]
]
sums = []
arr.each_index do |i|
  point = 0
  height = 0
  while point <= 3 and i <= 3
    sum = arr[i][point] + arr[i][point + 1] + arr[i][point + 2] +
          arr[i + 1][point + 1] + arr[i + 2][point] +
          arr[i + 2][point + 1] + arr[i + 2][point + 2]
    sums.push(sum)
    point += 1
    height += 1
  end
end

print sums.max, "\n"
