#
stock_prices_yesterday = [10, 7, 5, 8, 11, 9]

def get_max_profit(stock_prices)
  max_profit = 0

  stock_prices.each_with_index do |earlier_price, earlier_time|
    stock_prices.length[earlier_time + 1..-1].each do |inner_time|
      print "outer time ", outer_time, "\n"
      print "inner time ", inner_time, "\n"

      earlier_time = [outer_time, inner_time].min
      later_time = [outer_time, inner_time].max

      earlier_price = stock_prices[earlier_time]
      later_price = stock_prices[later_time]

      potential_profit = later_price - earlier_price
      max_profit = [max_profit, potential_profit].max
    end
  end

  max_profit

end

puts get_max_profit(stock_prices_yesterday)