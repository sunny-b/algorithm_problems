// Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.


// Write without regex

var isPalindrome = function(s) {
  s = s.toLowerCase().split('');
  head = 0;
  tail = s.length - 1;

  while (head < tail) {
    while (head < tail && /\W/.test(s[head])) {
      head++;
    }
    while (head < tail && /\W/.test(s[tail])) {
      tail--;
    }

    if (s[head] !== s[tail]) {
      return false;
    }

    head++;
    tail--;
  }

  return true;
};
