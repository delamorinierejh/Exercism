#
# Skeleton file for the Python "Bob" exercise.
#
def hey(what):
    what = ''.join(what.split())
    if what == '':
      return 'Fine. Be that way!'
    elif what == what.upper() and any(c.isalpha() for c in what):
      return 'Whoa, chill out!'
    elif what[-1] == '?':
      return 'Sure.'
    else:
      return 'Whatever.'
