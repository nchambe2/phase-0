//Pseudocode
// INPUT: Obtain a sentence
// STEPS:
// split the sentence and store each individual word in a array
// create a variable called reversed array
// FOR each word in the array THEN
//     store each reverse word in the reversed array
// END FOR

// Join the word back together
// Return the word

// OUTPUT: Returns each word in sentence reversed

//Initial Solution
// function reverseSentence(sentence) {
//    var wordArray = sentence.split(" ");
//    var reversedArray = [];

//    for (var i = 0; i < wordArray.length; i++) {
//       var revWord = wordArray[i].split("").reverse().join("");
//       reversedArray.push(revWord);
//    }
//    return reversedArray.join(" ");
// }

//Refactored Solution
function reverseSentence(sentence) {
   var reversedWords = [];
   sentence.split(" ").map(function(word) {
      reversedWords.push(word.split("").reverse().join(""));
  });

      return reversedWords.join(" ");
}

reverseSentence("hello");
reverseSentence("Hello Goodbye and tomorrow");

// What concepts did you solidify in working on this challenge?
//Method chaining. I did a lot more of it in Ruby then I have in Javascript. So this was a awesome opportunity to practice it.

// What was the most difficult part of this challenge?
// It just takes a lot more code to solve a problem in Javascript then it does in Ruby. That probably has a lot  more to do with the large amounts enumerable and other built in methods that come with Ruby.

// Did you solve the problem in a new way this time?
// Yes and no. I used the map, split, reverse, and join functions in both problems. The biggest difference was I didn't have to use the for loop in ruby to get the job done.

// Was your pseudocode different from the Ruby version? What was the same and what was different?
//Yes, the one one in Ruby was shorter. At a high level I wrote out what I wanted to do, and I used built in methods to do the heavy lifting. While in Javascript I had to write out more of the logic since I didn't have access to as many helper functions.