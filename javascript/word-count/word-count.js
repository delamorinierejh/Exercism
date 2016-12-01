function Words(){}

Words.prototype.count = function(input){
  input = input.trim().toLowerCase().split(/\s+/);
  var obj = {};
  for (var i = 0; i < input.length; i++){
    obj[input[i]] = 1;
    while (input.lastIndexOf(input[i]) !== i){
      obj[input[i]] += 1;
      input.splice(input.lastIndexOf(input[i]),1);
    }
  }
  return obj;
}

module.exports = Words;