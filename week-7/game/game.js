// Pseduocdoe
// Mission: The computer will randomly select a word. It is your objective to guess what that word starts with. If you guess correctly you win. The amount of tries you have is determined by the length of the word. If you can't successfully guess the correct letter during that period then you lose.
// Goals: Correctly guess the first letter in the randomly selected word.
// Objects: Computer, User
// Functions: startGame, guess, checkUserGuess

// Create a function called startGame: Displays game objective and rules to user

// Create a object called user
//    Declare a property called letterArray which contains letters a - z
//    Declare a property called userGuess and set that to null
//    Declare a property called numOfGuessesLeft set that equal to the length of the word declared in the computer object
//    Declare a method called guess
//        Generate a random num between 0 and one less than length
//        use that number to randomly grab a letter from the letterArray
//        set the value equal to userGuess

// Create a object called computer
//    Declare a property called words and set it equal to a word array
//    Declare a property called wordToGuess and set it to null
//    Declare a method called selectWord
//        Create a variable called index which randomly generates a number betwen - and 1 less than the length
//        use that number to randomly grab a letter from the words array
//        set the value equal to wordToGuess
//        set the value of numOfGuessesLeft to the length of the wordToGuess
//    Declare a method called checkUserGuess
//      IF numOfGuessesLeft > 0 THEN
//          IF user.userGuess ==== first letter of string THEN
//              return Yay! you have a match! The full word is "word"
//          ELSE
//              No match
//              subtract one from numOfGuessesLeft
//      ELSE
//          return You didn't guess the first letter in enough time!
//      END If
//   DECLARE a letterArray from [a..z]
//   DECLARE a property called userGuess and set it to null
//   DECLARE a method called guess
//     When guess is called it will randomly select a value from the letter array

//INITIAL SOLUTION
// function startGame () {
//     return "Welcome to Guess the First Letter of the word.\nRules: The computer will randomly select a word.\nIt is your objective to guess what that word starts with.\nIf you guess correctly you win.\nThe amount of tries you have is determined by the length of the word.\nIf you can't successfully guess the correct letter during that period you lose.";
// };

// var computer = {
//      words: ["wirable", "unrocked", "hausen", "platonised", "chantey", "pest", "roven"],
//      wordToGuess: null,

//      selectWord: function() {
//         var index = Math.floor(Math.random() * this.words.length);
//         this.wordToGuess = this.words[index];
//         user.numOfGuessesLeft = this.wordToGuess.length;
//         return "You have " + user.numOfGuessesLeft + " guesses to figure out the first letter in the word."
//      },
//      checkUserGuess: function() {
//         if (user.numOfGuessesLeft > 0) {
//             if (user.userGuess === this.wordToGuess.charAt(0)) {
//                 return "It's a match! The full word is " + this.wordToGuess + ".";
//             } else {
//                 console.log("Not a match");
//                 user.numOfGuessesLeft = user.numOfGuessesLeft - 1;
//                 console.log("You have " + user.numOfGuessesLeft + " guesses left.");
//                 return user.guess();
//             }
//         } else {
//               return "Sorry I can't accept that guess. You are all out of guesses. Better luck next time.";
//         }
//      }
// };

// var user = {
//    letterArray: "abcdefghijklmnopqrstuvwxyz".split(""),
//    userGuess: null,
//    numOfGuessesLeft: null,

//    guess: function() {
//       var index = Math.floor(Math.random() * this.letterArray.length);
//       this.userGuess = this.letterArray[index];
//       console.log("Does the word start with " + this.userGuess + "?");
//       return computer.checkUserGuess();
//   }

// };

//REFACTORED SOLUTION
function startGame () {
    return "Welcome to Guess the First Letter of the word.\nRules: The computer will randomly select a word.\nIt is your objective to guess what that word starts with.\nIf you guess correctly you win.\nThe amount of tries you have is determined by the length of the word.\nIf you can't successfully guess the correct letter during that period you lose.";
};

var computer = {
     words: ["wirable", "unrocked", "hausen", "platonised", "chantey", "pest", "roven"],
     wordToGuess: null,

     selectWord: function() {
        var index = Math.floor(Math.random() * this.words.length);
        this.wordToGuess = this.words[index];
        user.numOfGuessesLeft = this.wordToGuess.length;
        return "You have ".concat(user.numOfGuessesLeft + " guesses to figure out the first letter in the word.");
     },
     checkUserGuess: function() {
        if (user.numOfGuessesLeft > 0) {
            if (user.userGuess === this.wordToGuess.charAt(0)) {
                return "It's a match! The full word is ".concat(this.wordToGuess + ".");
            } else {
                console.log("Not a match");
                user.numOfGuessesLeft = user.numOfGuessesLeft - 1;
                console.log("You have ".concat(user.numOfGuessesLeft + " guesses left."));
                return user.guess();
            }
        } else {
              return "Sorry I can't accept that guess. You are all out of guesses. Better luck next time.";
        }
     }
};

var user = {
   letterArray: "abcdefghijklmnopqrstuvwxyz".split(""),
   userGuess: null,
   numOfGuessesLeft: null,

   guess: function() {
      var index = Math.floor(Math.random() * this.letterArray.length);
      this.userGuess = this.letterArray[index];
      console.log("Does the word start with ".concat( this.userGuess + "?"));
      return computer.checkUserGuess();
  }

};

console.log(startGame());
console.log(computer.selectWord());
console.log(user.guess());

// Reflection:
// What was the most difficult part of this challenge?
// Figuring out what I wanted to make, and how the logic should flow.
// I started out initially with a hangman type game.
// I soon realized that was way to complex  to start out with.
// I had to spend a lot of  time pseduocoding to keep the logic straight in my own head.
// Once I figured that out I ran into the stumbling block of working through the logic of having the program know how many times it should run before the user loses.
// That required me creating a nested if/else conditional statement, decrementing the numOfGuessesLeft, and having the checkUserGuess and guess methods call each other.

// What did you learn about creating objects and functions that interact with one another?
// I placed most of my functions inside of the objects.
// I thought that was a cleaner way of thinking about what behaviors belonged to which objects.
// Affecting values of other objects was rather straight forward.
// What wasn't as straight forward was affecting properties in my own object.
// Had a lot of issues, but I finally figured out that I had to use the this keyword.


// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I used .concat and .charAt.
// The are both methods of the string object
// Instead of using the + operator to add a string to another string you can use the concat method.
// Concat also takes an expression as argument.
// CharAt allows you to pass the index as an argument.
// It will then return the value  at that index.

// How can you access and manipulate properties of objects?
//If you want to access values of certain properties you can use dot or bracket notation.
//You can do <object>.<propertyName>, <object>[<propertyName>], or <object>[<expression>].
//If you want to change the property value, or add a property you do <object>.<propertyName> = <value> .
//If you want to delete a property you can do delete <object>.<propertyName> or <object>[<propertyName>] .
