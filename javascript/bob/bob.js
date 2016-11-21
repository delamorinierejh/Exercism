//
// This is only a SKELETON file for the "Bob" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Bob = function() {};

Bob.prototype.hey = function(input) {
  var last = input.length - 1;
  var alpha = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];

  var hasLetters = false;
  for (var j = 0; j < input.length; j++){
    if (alpha.indexOf(input.charAt(j).toLowerCase()) > -1){
      hasLetters = true;
      break;
    }
  }

  if (input.toUpperCase() === input && hasLetters){
    return "Whoa, chill out!"
  }

  if (input.charAt(last) === '?') {
    return "Sure."
  }

  var spaces = 0;
  for (var i = 0; i < input.length; i++){
    if (input.charAt(i) === " "){
      spaces++;
    }
  }
  if (spaces === input.length) {
    return "Fine. Be that way!"
  }

  return "Whatever."
};

module.exports = Bob;
