def insertion_sort(arr)
  for i in 1...arr.length
    k = arr[i]
    j = i - 1
    while j >= 0 and arr[j] > k
      arr[j+1] = arr[j]
      j = j- 1
    end
    arr[j + 1] = k
  end
  arr
end
