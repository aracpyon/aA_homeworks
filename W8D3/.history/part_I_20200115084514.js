

function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
} 

function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
        const x = 'in block';
        console.log(x);
    }ß
    console.log(x);
}

function mysteryScoping3() {
    const x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping5() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    let x = 'out of block again';
    console.log(x);
}

// madLib
// Write a function that takes three strings - a verb, an adjective, and a noun - uppercases and interpolates them into the sentence "We shall VERB the ADJECTIVE NOUN".Use ES6 template literals.

// For example,

function madLib(verb, adj, noun) {
    return `We Shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`
}
// > madLib('make', 'best', 'guac');
// "We shall MAKE the BEST GUAC."

// isSubstring
// Input

// 1) A String, called searchString.
// 2) A String, called subString.
//     Output: A Boolean.true if the subString is a part of the searchString.

function isSubstring(searchString, subString) {
    if searchString.includes(subsString);
}

// > isSubstring("time to program", "time")
// true

//     > isSubstring("Jump for joy", "joys")
// false