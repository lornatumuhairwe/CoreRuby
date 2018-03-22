# method one
def prime? number
  i = 2
  if number == 1 or number == 0
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

# method two
def prime_2? number
  false if [0, 1].include?(number)
  (2...number).none? { |n| (number % n).zero? }
end

# method three
require 'prime'
def prime_3? number
  # Prime.prime?(number)
  # Prime.instance.prime?(number)
  3.prime?
end
