// Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

var isPalindrome = function(s) {
  s = s.replace(/\W/g, '').toLowerCase().split('');
  head = 0;
  tail = s.length - 1;

  while (head < tail) {
    if (s[head] !== s[tail]) {
      return false;
    }

    head++;
    tail--;
  }

  return true;
};
