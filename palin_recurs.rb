def palindrome(str)
  return true if str.length < 2

  left, right = 0, str.length - 1

  left += 1 while /\W/.match str[left]
  right -= 1 while /\W/.match str[right]

  str[left] == str[right] && palindrome(str[left + 1...right])
end

palindrome 'r#$%aceca r'
