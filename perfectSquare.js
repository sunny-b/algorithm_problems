// Given a positive integer num, write a function which returns True if num is a perfect square else False.

var isPerfectSquare = function(num) {
    var left = 2;
    var right = num;
    var mid, square;

    while (left + 1 < right) {
        mid = Math.floor(left + (right - left) / 2);
        square = mid * mid;

        if (square === num) {
            return true;
        } else if (square > num) {
            right = mid;
        } else {
            left = mid;
        }
    }

    return left * left === num || right * right === num ? true : false;
};
