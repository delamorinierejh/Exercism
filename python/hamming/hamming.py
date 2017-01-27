def distance(str1, str2):
  if len(str1) != len(str2):
    raise ValueError('different lengths')
  else:
    count = 0
    for index, char in enumerate(str1):
      if char != str2[index]:
        count += 1
    return count