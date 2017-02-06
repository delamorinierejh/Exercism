import re

def word_count(str):
  str = str.decode('utf-8')
  sentence = re.sub("[\W]|_", " ", str, re.UNICODE)
  d = {}
  for word in sentence.lower().split():
    if word in d:
      d[word] += 1
    else:
      d[word] = 1
  return d