/*
Your previous Ruby content is preserved below:

Separate Numbers with Commas in JavaScript **Pairing Challenge**


I worked on this challenge with: .

// Pseudocode
INPUT: Number
STEPS:
Convert number to string
Store that conversion in a variable called stringToNum
Find the last index of the string by
  finding the length
OUTPUT: Number converted to string. Commas should appear starting with the last number every 3 places.
def seperate comma function which will take a integer as a argument
transform to a string
count from last number
use a for loop to insert comma at every three numbers
should only include corrent number of commas


 */

// Initial Solution

// function seperateComma(number) {
//   var stringNumber = number.toString().split("");
//   var indexOfLastNumber = stringNumber.length - 1;

//   for (var counter = 3; counter <= indexOfLastNumber ; counter += 3 ) {

//     if (stringNumber.length < 4) {
//         return stringNumber.join("")
//     } else if (stringNumber.length > 4) {
//         var slices = indexOfLastNumber - counter;
//         var numWithCommas = stringNumber.splice(slices, 0 ,",");
//         var returnToString = numWithCommas.join();
//     }
//   };
//      return stringNumber.join("");
// };


// Refactored Solution

function seperateComma(number) {
  var stringNumber = number.toString().split("");
  var indexOfLastNumber = stringNumber.length - 1;
  var slices;

  for (var counter = 3; counter <= indexOfLastNumber ; counter += 3 ) {

    if (stringNumber.length < 4) {
        return stringNumber.join("");
    } else if (stringNumber.length > 4) {
        slices = indexOfLastNumber - counter;
        stringNumber.splice(slices, 0 ,",");
    }
  };
     return stringNumber.join("");
};


// Your Own Tests (OPTIONAL)




// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// I approached this solution very differently from when I first did it.
// My original solution in Ruby was very brittle, and only covered certain cases.
// So I was happy to see my growth from then to now.
// Fundamentally, logic is logic.
// If you can figure out the logic then your just left with the how.

// What did you learn about iterating over arrays in JavaScript?
// If you have to iterate over an array using the for loop is the best way to approach it.
// For loops are a lot more compact than while loops, and easier to follow.

// What was different about solving this problem in JavaScript?
// Lack of enumerable methods that do the heavy lifiting for you.

// What built-in methods did you find to incorporate in your refactored solution?
// My pair and I used join and splice.