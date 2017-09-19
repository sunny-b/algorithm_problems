def change(amount, coins)
  coins = coins.sort
  change_helper(amount, coins)
end

def change_helper(amount, coins, cache = {}, i = 0)
    if amount == 0
        return 1
    elsif i == coins.size || cache["#{amount}-#{i}"]
      return 0
    end

    ways = 0

    (i...coins.size).each do |idx|
        coin = coins[idx]
        next unless coin <= amount

        remaining = amount - coin
        ways += change_helper(remaining, coins, cache, idx)
    end

    cache["#{amount}-#{i}"] = ways
end

change 5, [1, 2, 5]
