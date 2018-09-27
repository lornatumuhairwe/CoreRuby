def merge_sort(list)
  if list.length <= 1
    list
  else
    mid = ( list.length / 2).floor
    left = merge_sort(list[0...mid])
    right = merge_sort(list[mid...list.length])
    merge_a(left, right)
  end
end

def merge_a(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge_a(left[1..left.length], right)
  elsif right.first < left.first
    [right.first] + merge_a(left, right[1..right.length])
  end
end
