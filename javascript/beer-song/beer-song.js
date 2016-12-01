function BeerSong(){

  this.verse = function(number){
    number = (number === 0) ? 'No more' : number;
    let pluralOne = number === 1 ? '' : 's';
    let pluralTwo = number > 2 ? 's' : '';
    pluralTwo = number === 1 ? 's' : pluralTwo;
    let secondNum = number > 1 ? (number-1) : "no more";
    let itOne = number > 1 ? "one" : "it";
    let firstBit = `${number} bottle${pluralOne} of beer on the wall, ${typeof number === 'number' ? number : number.toLowerCase()} bottle${pluralOne} of beer.\n`

    let secondBit = `Take ${itOne} down and pass it around, ${secondNum} bottle${pluralTwo} of beer on the wall.\n`;

    secondBit = number === 'No more' ? 'Go to the store and buy some more, 99 bottles of beer on the wall.\n' : secondBit;

    return (firstBit + secondBit);
  }

  this.sing = function(verse1, verse2=0){
    let array = [];
    while (verse1 >= verse2){
      array.push(this.verse(verse1));
      verse1--;
    }
    return array.join('\n');
  }
}

module.exports = BeerSong;