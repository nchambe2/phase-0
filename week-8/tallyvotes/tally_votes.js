// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// For over every voters ballet
//   Set the president's vote count eql to each voters ballot submission for prez
//       IF initial value is undefined THEN
//            set it eql to one
//        ELSE add one for each occurance of voters name
// Set the vice-president's vote count eql to each voters ballot submission for vice prez
//     IF initial value is undefined THEN
//            set it eql to one
//     ELSE add one for each occurance of voters name
// Set the secretary's vote count eql to each voters ballot submission for secretary
//     IF initial value is undefined THEN
//            set it eql to one
//     ELSE add one for each occurance of voters name
// Set the treasurer's vote count eql to each voters ballot submission for treasurer
//     IF initial value is undefined THEN
//            set it eql to one
//     ELSE add one for each occurance of voters name


//For every office role tally
//Create a empty array
//For every candidate on the ballot push the candidate and their vote count into the empty array
//Sort the vote count for each role in descending order
//Set each officer role to the name of the person with the highest vote count

// __________________________________________
// Initial Solution
// for (var voter in votes) {
//    if (votes.hasOwnProperty(voter)) {
//     var ballot = votes[voter];
//     var presidentName = ballot.president;
//     var vicePresident = ballot.vicePresident;
//     var secretary = ballot.secretary;
//     var treasurer = ballot.treasurer;

//     if (voteCount.president[presidentName] === undefined ) {
//       voteCount.president[presidentName] = 1;
//     } else {
//       voteCount.president[presidentName] += 1;
//     }

//       if (voteCount.vicePresident[vicePresident] === undefined ) {
//       voteCount.vicePresident[vicePresident] = 1;
//     } else {
//       voteCount.vicePresident[vicePresident] += 1;
//     }

//      if (voteCount.secretary[secretary] === undefined ) {
//       voteCount.secretary[secretary] = 1;
//     } else {
//       voteCount.secretary[secretary] += 1;
//     }

//     if (voteCount.treasurer[treasurer] === undefined ) {
//       voteCount.treasurer[treasurer] = 1;
//     } else {
//       voteCount.treasurer[treasurer] += 1;
//     }
//  }
// };

// //console.log(voteCount);


// for (var officeRole in voteCount) {
//     var votes = [];
//     var ballot = voteCount[officeRole];
//     for (var candidate in ballot) {
//         votes.push([candidate, ballot[candidate]]);
//         console.log(votes.sort(function(a,b){return b[1] - a[1] }));
//       }
//      officers[officeRole] = votes[0][0];
// }

// console.log(officers);

// __________________________________________
// Refactored Solution

for (var voter in votes) {
  if (votes.hasOwnProperty(voter)) {
  var vote = votes[voter];
  for (var officer in vote) {
    if (voteCount[officer][vote[officer]] >= 1) {
        voteCount[officer][vote[officer]] += 1;
    } else {
      voteCount[officer][vote[officer]] = 1;
    }
  }
 }
};

console.log(voteCount);


for (var officeRole in voteCount) {
  if (voteCount.hasOwnProperty(officeRole)) {
    var votes = [];
    var ballot = voteCount[officeRole];
    for (var candidate in ballot) {
        votes.push([candidate, ballot[candidate]]);
        console.log(votes.sort((a,b) => b[1] - a[1]));
      }
     officers[officeRole] = votes[0][0];
  }
}

console.log(officers);

// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
// That it's much harder to do in Javascript then in Ruby.
// The for in concept was new to me.
// So that was cool using something new to iterate with.
// One thing though was that I had to remember to use the .hasOwnProperty.
// It was very tempting to leave it out, but after doing some research it's bad practice to not use it. So I added it back.

// Were you able to find useful methods to help you with this?
// I used the sort, push, and my pair taught me about using the arrow function.

// What concepts were solidified in the process of working through this challenge?
// The use of bracket notation.
// This challenge utilized them heavily.

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
