function Pangram(sentence){
  this.sentence = sentence;
  this.isPangram = function(){
    var hold = this.sentence.toLowerCase();
    var alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('');
    for (var i = 0; i < alphabet.length; i++){
      if (hold.indexOf(alphabet[i]) === -1){
        return false;
      }
    }
    return true;
  };
}

module.exports = Pangram;