# Write a function that takes a string as input and returns the string reversed.
# Example:
# Given s = "hello", return "olleh".

def reverse_string(s)
  return s if s.length <= 1

  s = s.chars
  head = 0
  tail = s.length - 1

  while (head <= tail) do
    placeholder = s[tail]
    s[tail] = s[head]
    s[head] = placeholder

    head += 1
    tail -= 1
  end

  s.join
end

reverse_string('hello')
