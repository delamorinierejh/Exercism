function FoodChain(){

  this.animals = [
    ['fly', 'I don\'t know why she swallowed the fly. Perhaps she\'ll die.\n'],
    ['spider', 'wriggled and jiggled and tickled inside her.\n'],
    ['bird', 'How absurd to swallow a bird!\n'],
    ['cat', 'Imagine that, to swallow a cat!\n'],
    ['dog', 'What a hog, to swallow a dog!\n'],
    ['goat', 'Just opened her throat and swallowed a goat!\n'],
    ['cow', 'I don\'t know how she swallowed a cow!\n'],
    ['horse', 'She\'s dead, of course!\n']
  ];

  this.verse = function(verse){
    if (verse === 2){
      return 'I know an old lady who swallowed a spider.\nIt wriggled and jiggled and tickled inside her.\n' +
      'She swallowed the spider to catch the fly.\n' + 'I don\'t know why she swallowed the fly. Perhaps she\'ll die.\n';
    }
    var animal = this.animals[verse-1];
    var swallowed = 'She swallowed the ';
    var toCatch = 'To catch the ';
    var song = `I know an old lady who swallowed a ${animal[0]}.\n${animal[1]}`;
    if (verse === 8) return song;
    for (var i = verse-1; i > 0; i--){
      if (i > 0){
        song += `She swallowed the ${this.animals[i][0]} to catch the ${this.animals[i-1][0]}`;
      } if (verse > 2 && this.animals[i-1][0] === 'spider'){
        song += ` that `;
      } else if (this.animals[i-1][0] === 'spider') {
        song += `.\nIt `;
      } else {
        song += `.\n`
      }
      if (i < 3){
        song += `${this.animals[i-1][1]}`;
      } 
    }
    return song;
  }

  this.verses = function(a,b){
    var whole = '';
    while (a <= b){
      whole += this.verse(a);
      whole += '\n';
      a++;
    }
    return whole;
  }

}

module.exports = FoodChain;