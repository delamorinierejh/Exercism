var DnaTranscriber = function() {};

DnaTranscriber.prototype.toRna = function(input) {
  var dnaRna = {
    G : 'C',
    C : 'G',
    T : 'A',
    A : 'U'
  };
  input = input.split('');
  for (var i = 0; i < input.length; i++){
    input[i] = dnaRna[input[i]];
  }
  return input.join('');
};

module.exports = DnaTranscriber;
