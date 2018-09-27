def selection_sort(arr)
  n = arr.size - 1

  n.times do |i|
    (i + 1).upto(n) { |j|
      arr[i], arr[j] = arr[j], arr[i] if arr[i] > arr[j]
    }
  end

  arr
end

arr = Array.new(5) { rand(1..100)}
print arr
print "\n"
print selection_sort(arr)
