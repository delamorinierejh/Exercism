function Isogram(word){
  this.word = word;
  this.isIsogram = function(){
    
    var hold = this.word;
    hold = hold.replace(/[^a-zA-Z0-9_é]/g, '').toLowerCase().split('');
    for (var i = 0; i < hold.length; i++){
      if (hold.lastIndexOf(hold[i]) !== i){
        return false;
      }
    }
    return true;
  };
};

module.exports = Isogram;