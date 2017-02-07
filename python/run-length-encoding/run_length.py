def encode(string):
  ret_string = ''
  app_string = ''
  count = 1
  for character in string:
    if character == app_string:
      count += 1
    else:
      if count > 1:
        ret_string +=  str(count)
      ret_string += app_string
      count = 1
    app_string = character
  if count > 1:
    ret_string += (str(count) + app_string)
  else:
    ret_string += app_string
  return ret_string


def decode(string):
  ret_string = ''
  number = ''
  for index, character in enumerate(string):
    if character.isdigit():
      number += character
    else:
      if len(number):
        for i in range (int(number)):
          ret_string += character
      else:
        ret_string += character
      number = ''
  return ret_string
