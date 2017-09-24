# Given an input string, reverse the string word by word.
#
# For example,
# Given s = "the sky is blue",
# return "blue is sky the"
#
# Assume the input doesn't contain leading or trailing spaces and
# the words are always separated by a single space.

# Input: string
# Output: same String with words reversed
# Approach:
#

# def reverse_words(str)
#   new_str = ''
#   anchor = runner = str.length - 1
#
#   while runner > 0
#     while str[runner] != ' '
#       runner -= 1
#     end
#
#     new_str += str[(runner + 1)..anchor] + ' '
#     runner -= 1
#     anchor = runner
#   end
#   new_str += str[(runner)..anchor]
#
#   new_str
# end

# Given s = "a eht yks"
# ""

def reverse_words(str)
  anchor = runner = str.length - 1

  while runner > 0
    while str[runner] != ' ' && runner > 0
      runner -= 1
    end

    break if runner == 0

    beginning = runner + 1

    while beginning <= anchor
      str[beginning], str[anchor] = str[anchor], str[beginning]
      beginning += 1
      anchor -= 1
    end

    runner -= 1
    anchor = runner
  end

  while runner <= anchor
    str[runner], str[anchor] = str[anchor], str[runner]
    runner += 1
    anchor -= 1
  end

  runner = 0
  anchor = str.length - 1

  while runner <= anchor
    str[runner], str[anchor] = str[anchor], str[runner]

    runner += 1
    anchor -= 1
  end

  str
end

reverse_words("the sky is blue")
