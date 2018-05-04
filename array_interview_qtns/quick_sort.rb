def quick_sort(array)
  quick_sort2(array, 0, array.length)
end

def quick_sort2(array, low, high)
  if low < high
    p = partition(array, low, high)
    quick_sort2(array, low, p - 1)
    quick_sort2(array, p + 1, high)
  end
end

def get_pivot(array, low, high)
  mid = ((low + high)/2).floor
  pivot = high
  if array[low].to_i < array[mid].to_i
    if array[mid] < array[high]
      pivot = mid
    end
  else
    pivot = low
  end
  pivot
end

def partition(array, low, high)
  pivotIndex = get_pivot(array, high, low)
  pivotValue = array[pivotIndex]

  array[pivotIndex], array[low] = array[low], array[pivotIndex]
  border = low

  for i in (low...high+1)
    if array[i].to_i < pivotValue.to_i
      border += 1
      array[i], array[border] = array[border], array[i]
    end
  end
  array[low], array[border] = array[border], array[low]

  border
end

array = [3, 5, 7, 11, -2, 2, 9, 6]

quick_sort(array)
print array, "\n"
