function Pangram(sentence){
  this.sentence = sentence.toLowerCase().replace(/[^a-z]/g, '').split('');
  this.isPangram = function(){
    var arr = []
    this.sentence.forEach(function(char){
      if (arr.indexOf(char) == -1) arr.push(char);
    });
    return arr.length === 26;
  };
}

module.exports = Pangram;