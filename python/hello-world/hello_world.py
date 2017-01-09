#
# Skeleton file for the Python "Hello World" exercise.
#
# -*- coding: utf-8 -*-


def hello(name="World"):
  if name == "" or not name:
    return u"Hello, World!"
  else:
    return u"Hello, %s!" % name
