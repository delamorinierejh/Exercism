def is_pangram(str):
  ALPHABET = 'abcdefghijklmnopqrstuvwxyz'
  str = str.lower()
  for char in ALPHABET:
    if char not in str.lower():
      return False
  return True