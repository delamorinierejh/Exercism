def to_rna(str):
  rna_hash = {
    'G' : 'C',
    'C' : 'G',
    'T' : 'A',
    'A' : 'U'
  }
  ret_str = ''
  for char in str:
    if char not in 'GCTA':
      return ''
    else:
      ret_str += rna_hash[char]
  return ret_str
