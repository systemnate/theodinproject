def stock_picker(stock_prices)
  stock_prices.combination(2).to_a.sort_by { |price| price[0] - price[1] }.first.map { |index| stock_prices.index(index) }
end

p stock_picker([17,3,6,9,15,8,6,1,10])
