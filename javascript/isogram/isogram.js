function Isogram(word){
  this.word = word.toLowerCase().replace(/[^a-zA-Z0-9_é]/g, '');
  this.isIsogram = function(){
    for (var i = 0; i < this.word.length - 1; i++) {
      if (this.word.indexOf(this.word[i]) !== this.word.lastIndexOf(this.word[i])) return false;
    }
    return true;
  };
};

module.exports = Isogram;