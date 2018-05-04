def get_name(first_name, last_name, &block)
  [first_name, last_name]
end

puts get_name("Lorna", "Lynn", "Tumuhairwe", "Niwamanya")