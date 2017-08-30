function findNum(arr, target, current = 0) {
  if (current >= arr.length) {
    return -1;
  } else if (arr[current] === target) {
    return current;
  }

  return findNum(arr, target, current + 1);
}
