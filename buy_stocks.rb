def max_profit(prices)
    max = 0
    low = prices[0]
    high = 0

    1.upto(prices.length - 1) do |i|
        if prices[i] < low
            low = prices[i]
            high = 0
        elsif prices[i] > high
            high = prices[i]
            max = max > (high - low) ? max : (high - low)
        end
    end

    max
end
