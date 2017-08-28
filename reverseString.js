// Write a function that takes a string as input and returns the string reversed.
// Example:
// Given s = "hello", return "olleh".

var reverseString = function(s) {
  s = s.split('');
  var head = 0;
  var tail = s.length - 1;
  var temp;

  while (head < tail) {
    temp = s[head];
    s[head] = s[tail];
    s[tail] = temp;

    head++;
    tail--;
  }

  return s.join('');
};
