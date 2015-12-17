// Release 1:

var addClass= document.getElementById("release-0");
addClass.classList.add("done");

// Release 2:

var setStyle = document.getElementById("release-1");
setStyle.style.display = "none";


// Release 3:
var changeText = document.getElementsByTagName('h1');
changeText[0].innerHTML = "I completed release 2.";

// Release 4:

var changeColor = document.getElementById("release-3");
changeColor.style.backgroundColor = "#955251";


// Release 5:

var changeTextSize = document.getElementsByClassName("release-4");
for (var i = 0; i < changeTextSize.length; i++) {
    changeTextSize[i].style.fontSize = "2em";
}

// Release 6:
var showHiddenText = document.getElementById("hidden");
document.body.appendChild(showHiddenText.content.cloneNode(true));

//Reflection:
//What did you learn about the DOM?
// It was good practice accessing elements via different properties.
//The one thing tripped us up a little bit was changing the text size for all elements with a certain class name.
//We got stuck for awhile until we realized that we were getting a collection object back, and we needed to iterate over that collection to change the property for each element.

//What are some useful methods to use to manipulate the DOM?
//I would say first checking to see if your element has a id or class like identifer that you can use to access it. If not then grab it by it's tag name.

