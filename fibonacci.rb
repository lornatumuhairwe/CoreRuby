def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 2) + fibonacci(number - 1)
  end
end

puts fibonacci(6)
