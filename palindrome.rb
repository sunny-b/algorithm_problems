# Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

def is_palindrome(s)
  s = s.gsub(/\W/, '').downcase.chars
  head = 0
  tail = s.length - 1

  while (head < tail) do
    return false unless s[head] == s[tail]

    head += 1
    tail -= 1
  end

  true
end
