function School(){
  return {
    schoolRoster: {},
    roster: function(){
      var roster = this.schoolRoster;
      for(var key in roster){
        roster[key] = roster[key].sort();
      }
      return roster;
    },
    add: function(name, grade){
      if(this.schoolRoster.hasOwnProperty(grade)){
        this.schoolRoster[grade].push(name);
      } else {
        this.schoolRoster[grade] = [name];
      }
    },
    grade: function(grade){
      if(this.schoolRoster.hasOwnProperty(grade)){
        return this.schoolRoster[grade].sort();
      } else {
        return [];
      }
    }
  }
}

module.exports = School;