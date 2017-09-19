# def change(amount, coins)
#     dp = [0] * (amount + 2)
#     dp[0] = 1
#     coins.each do |num|
#         1.upto(amount + 1) do |i|
#             dp[i] += dp[i - 1] if i >= num
#             dp
#         end
#     end
#
#     dp[amount]
# end

# def coin_change(coins, amount)
#   coins = coins.sort { | a, b| b - a }
#   coin_change_helper(coins, amount)
# end
#
# def coin_change_helper(coins, amount, cache = {})
#     if amount == 0
#         return 0
#     elsif amount < 0
#         return -1
#     elsif cache[amount]
#         return cache[amount]
#     end
#
#     min = amount + 1
# 
#     coins.each do |coin|
#         remaining = amount - coin
#         new_min = coin_change_helper(coins, remaining, cache)
#
#         min = new_min + 1 if new_min >= 0 && new_min < min
#     end
#
#     cache[amount] = (min == amount + 1 ? -1 : min)
# end

# 110010100101
# 000100000000
# 110110100101

# 1000 - 2
# 0111 -
# &
# 0000 - 0

# 1000
# 0111
# 0000


coin_change([3, 7, 405, 436], 8839)
