function Anagram(word){

  this.word = word;

  this.matches = function(){
    
    const array = [].concat(...arguments);

    var lower = this.word.toLowerCase();

    for (var k = 0; k < array.length; k++){
      if (lower === array[k].toLowerCase() || lower.split('').sort().join('') !== array[k].toLowerCase().split('').sort().join('')){
        array.splice(k,1);
        k--;
      } 
    }
    return array;

  }

}

module.exports = Anagram;