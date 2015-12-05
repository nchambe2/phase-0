// Add the finished solution here when you receive it.
// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]

// Note: Code was not refactored as it was already as DRY as it could be.
// All tests passed execpt for median should return the median value of all elements in an array with an odd length.

// Function 1
// I as a user want to make sure that whenever I used this program, that if something goes wrong, the program will let me know. (And in more coder speak terms, that if the argument is not an array or if it is and has a nil value, then an error will be thrown.)

function isArrayOfNum(arr) {
  if(!Array.isArray(arr)) throw new Error("Input is not an array");
  for(var i = 0; i < arr.length; i++) {
    if(isNaN(arr[i])) throw new Error("Input is an array with at least 1 NaN value");
  }
  return arr;
}

// Function 2
// I as a user want to know the sum of a list of numbers.
function sum(arr) {
  var runSum = 0;
  for(var i = 0; i < arr.length; i++)
    runSum += arr[i];
  return runSum;
}

// Function 3
// I as a user want to know the mean of a list of numbers.
function mean(arr) {
  var runSum = 0;
  for(var i = 0; i < arr.length; i++)
    runSum += arr[i];
  return runSum / arr.length;
}

// Function 4
// I as user want to know the mediam of a list of numbers.
function median(arr) {
  sortedArr = arr.sort(function(a, b) {
    return a - b;
  });
  length = arr.length;
  if (length % 2 == 1)
    return (arr.length + 1)/2;
  else
    return (arr[length/2] + arr[length/2 - 1]) / 2;
}

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)