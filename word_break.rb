# recursive

# def word_break(s, word_dict)
#     word_hash = {}
#     word_dict.each { |word| word_hash[word] = true}
#     word_break_helper(s, word_hash)
# end
#
# def word_break_helper(s, word_hash, cache = {}, i = 0)
#     return true if i >= s.length || cache[s[i..-1]]
#
#     (i...s.length).each do |j|
#         substr = s[i..j]
#         unless cache[substr] || word_hash.include?(substr)
#             cache[substr] = false
#             next
#         end
#
#         return true if word_break_helper(s, word_hash, cache, j + 1)
#     end
#
#     return false
# end

# iterative

def word_break(s, word_dict)
    dp = [true]
    word_hash = {}

    word_dict.each { |word| word_hash[word] = true }

    (1..s.length).each do |i|
        (0...i).each do |j|
            if dp[j] && word_hash[s[j...i]]
                dp[i] = true
                break
            end
        end
    end

    !!dp[s.length]
end
