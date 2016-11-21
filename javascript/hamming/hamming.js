var Hamming = function() {};

Hamming.prototype.compute = function(dna, dnaTwo ) {
  if (dna.length != dnaTwo.length){
    throw new Error('DNA strands must be of equal length.');
    return;
  }
  var count = 0;
  for (var i = 0; i < dna.length; i++){
    if (dna.charAt(i) != dnaTwo.charAt(i)){
      count++;
    }
  }
  return count;
};

module.exports = Hamming;
