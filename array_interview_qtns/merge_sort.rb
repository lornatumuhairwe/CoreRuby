def merge_sort(array)
  merge_sort2(array, 0, array.length)
end

def merge_sort2(array, first, last)
  if first < last
    middle = ((first + last)/2).floor
    merge_sort2(array, first, middle)
    merge_sort2(array, middle + 1, last)
    merge(array, first, middle, last)
  end
end

def merge(array, first, middle, last)
  l = array[first, middle]
  r = array[middle, last + 1]
  l.push(9999999999)
  r.push(9999999999)
  i = 0
  j = 0
  print l, "\n"
  print r, "\n"
  for k in (first...last)
    if l[i].to_i < r[j].to_i
      array[k] = l[i].to_i
      i += 1
    else
      array[k] = r[j].to_i
      j += 1
    end
  end

end

array = [3, 5, 7, 11, -2, 2, 9, 6]
merge_sort(array)
print array, "\n"
