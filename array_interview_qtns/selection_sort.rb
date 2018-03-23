def swap(array, firstIndex, secondIndex)
  temp = array[firstIndex]
  array[firstIndex] = array[secondIndex]
  array[secondIndex] = temp
  array
end

def indexOfMinimum(array, startIndex)
  minIndex = startIndex
  minValue = array[minIndex]
  array.each_index do |index|
    if array[minIndex] < array[index]
      minValue = array[index]
      minIndex = index
      # swap happens here
      swap(array, startIndex, minIndex)
    end
  end
  minIndex
end

def selectionSort(array)
  array.each_index do |index|
    indexOfMinimum(array, index)
  end
end

print selectionSort([2, 3, 1, 7, 0]), "\n"
