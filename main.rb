def stock_pricer(stocks)
  biggest_profit = 0
  current_pair = [0, 1]

  stocks.each_with_index do |stock, index|
    break if index == (stocks.length - 1)

    for i in (index + 1)..(stocks.length - 1)
      next_stock = stocks[i]
      profit = next_stock - stock

      if profit > biggest_profit
        biggest_profit = profit
        current_pair = [index, i]
      end
    end
  end

  current_pair
end

puts stock_pricer([17,12,6,9,15,8,6,66,1])
