function Gigasecond(inputDate) {
  this.inputDate = inputDate;
};

Gigasecond.prototype.date = function() {
  return new Date(this.inputDate.getTime() + 1000000000000);
};

module.exports = Gigasecond;