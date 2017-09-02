def max_profit(prices)
    sum = 0

    0.upto(prices.size - 2) { |i| sum += prices[i + 1] - prices[i] if prices[i + 1] > prices[i] }

    sum
end
