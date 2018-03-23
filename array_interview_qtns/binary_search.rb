def binary_search(array, number)
  max = array.length - 1
  min = 0

  while max >= min

    guess = ((max + min)/2).floor

    if array[guess] == number
      return guess
    elsif array[guess] > number
      max = guess -= 1
    else
      min = guess += 1
    end

    return -1
  end

end

puts binary_search([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 11)
