function Anagram(word){

  this.word = word;

  this.matches = function(){
    
    // Neat ES6 solution I found on SO - wahoo
    const array = [].concat(...arguments);
  
    //// Bodgy way I did it before which works with different combos of arguments (e.g strings + arrays)
    // var array = [];
    // for (var i = 0; i < arguments.length; i++){
    //   if (arguments[i] instanceof Array){
    //     for (var j = 0; j < arguments[i].length; j++){
    //       array.push(arguments[i][j]);
    //     }
    //   } else {
    //     array.push(arguments[i]);
    //   }
    // }

    var lower = this.word.toLowerCase();

    for (var k = 0; k < array.length; k++){
      if (lower.length !== array[k].length || lower === array[k].toLowerCase() || lower.split('').sort().join('') !== array[k].toLowerCase().split('').sort().join('')){
        array.splice(k,1);
        k--;
      } 
    }
    return array;

  }

}

module.exports = Anagram;