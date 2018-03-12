def prime? number
  i = 2
  if number == 1
    return false
  end
  while i < number
    if (number % i).zero?
      return false
    end
    i += 1
  end
  true
end

print prime? 1
