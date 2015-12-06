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
//    Declare a property called word and set it equal to a value
//    Declare a method called checkUserGuess
//      iterate through the each letter in the word property
//      IF numOfGuessesLeft > 0 THEN
//          IF user.userGuess ==== first letter of string THEN
//                return Yay! you have a match! The full word is "word"
//                subtract one from userGuess
//          END IF
//      ELSE
//          return You didn't guess the first letter in enough time!
//      END If
//   DECLARE a letterArray from [a..z]
//   DECLARE a property called userGuess and set it to null
//   DECLARE a method called guess
//     When guess is called it will randomly select a value from the letter array


function startGame () {
    return "Welcome to Guess the First Letter of the word.\nRules: The computer will randomly select a word.\nIt is your objective to guess what that word starts with.\nIf you guess correctly you win.\nThe amount of tries you have is determined by the length of the word.\nIf you can't successfully guess the correct letter during that period then you lose.";
};

var computer = {
     words: ["wirable", "unrocked", "hausen", "platonised", "chantey", "pest", "roven"],
     wordToGuess: null,

     selectWord: function() {
        var index = Math.floor(Math.random() * this.words.length);
        this.wordToGuess = this.words[index];
        user.numOfGuessesLeft = this.wordToGuess.length;
     },
     checkUserGuess: function() {
        if (user.numOfGuessesLeft > 0) {
            if (user.userGuess === this.wordToGuess.charAt(0)) {
                return "It's a match! The full word is " + this.wordToGuess + ".";
            } else {
                console.log("Not a match");
                user.numOfGuessesLeft = user.numOfGuessesLeft - 1;
                console.log("You have " + user.numOfGuessesLeft + " guesses left.");
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
      console.log("Does the word start with " + this.userGuess + "?");
      return computer.checkUserGuess();
  }

};

console.log(startGame());
console.log(computer.selectWord());
console.log(computer.wordToGuess);
console.log(user.numOfGuessesLeft);
console.log(user.guess());

