def insert(array, rightIndex, value)
  number = array[rightIndex + 1]
  i = rightIndex
  puts number
  while i >= 0
    if array[i] > value
      array[i + 1] = array[i]
      array[i] = number
    end
    i -= 1
  end
  array
end

def insertionSort(array)
  for index in (1...array.length)
    insert(array, index - 1, array[index])
  end
end

array = [3, 5, 7, 11, -2, 2, 9, 6]

# insert(array, 4, 2)
insertionSort(array)

print "The array is: ", array , "\n"
