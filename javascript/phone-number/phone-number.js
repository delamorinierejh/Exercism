function PhoneNumber(digits){
  
  this.digits = digits;

  this.number = function(){

    var string = this.digits.replace(/\D/g,'');

    if (string.length === 10){
      return string;
    } else if (string.length === 11 && string.charAt(0) === '1') {
      return string.slice(1);
    } else {
      return '0000000000';
    }

  }

  this.areaCode = function(){
    return this.digits.substring(0,3);
  }

  this.toString = function(){
    return `(${this.digits.substring(0,3)}) ${this.digits.substring(3,6)}-${this.digits.substring(6)}`
  }

}

module.exports = PhoneNumber