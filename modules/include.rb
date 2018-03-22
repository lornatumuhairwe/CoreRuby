module Logging
  def log(message)
    message
  end
end

module Debug
  def log_debug(message)
    message
  end
end

class Service
  include Logging
  include Debug
end

puts Service.new.log("Hello")
