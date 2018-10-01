#set swap counter to none 0
#swap elements out of order 
# increment the counter
# break if counter == 0
def bubblesort(arr)
  counter = 1
  while true
    counter = 0
    (arr.length - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        counter += 1
      end
    end
    break if counter == 0
  end
  arr
end
