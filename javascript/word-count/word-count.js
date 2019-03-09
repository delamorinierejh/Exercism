function Words(){}

Words.prototype.count = function(input){
  var hash = {};
  input.trim().toLowerCase().split(/\s+/).forEach(function(word) {
    hash[word] = (typeof(hash[word]) === 'number' ? hash[word] : 0) + 1;
  });
  return hash;
}

module.exports = Words;