// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var name = "Nicolette"
console.log(name)

name = "Alexandria"
console.log(name)

//user input
var favoriteFood = prompt("What is your favorite food?");
console.log(favoriteFood.toUpperCase().concat("??!?!?!?", " Why that's my favorite food too!"));


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for (var star = "*"; star.length <= 7; star += "*")
  console.log(star);

for (var number = 0; number <= 100; number += 1) {
  if (number % 3 == 0) console.log("Fizz") {
  } else if {
    ( number % 5 == 0) console.log("Buzz");
  };
};


// Functions

// Complete the `minimum` exercise.
function min (num1, num2) {
  var minNum = (num1 <= num2) ? num1 : num2 ;

    console.log(minNum);
};

min(2,4);


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Nicolette Chambers",
  age: 27,
  favoriteFoods: {
      food1: "cake",
      food2: "pie",
      food3: "donuts"
  },
  quirk: "can wigglemy ear"
};


