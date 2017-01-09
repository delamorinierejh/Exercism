class Clock:
  def __init__(self, hours, minutes):
    self.hours = hours
    self.minutes = minutes
    self.calculate()

  def __str__(self):
    return (self.format_hours() + ':' + self.format_mins())

  def __eq__(self, other):
    return (self.hours == other.hours and self.minutes == other.minutes)
  
  def add(self, minutes):
    self.minutes += minutes
    self.calculate()
    return self

  def calculate(self):
    self.calculate_mins()
    self.calculate_hours()

  def calculate_hours(self):
    self.hours = self.hours % 24

  def calculate_mins(self):
    self.hours += self.minutes / 60
    self.minutes = self.minutes % 60

  def format_hours(self):
    return str(self.hours).zfill(2)

  def format_mins(self):
    return str(self.minutes).zfill(2)
