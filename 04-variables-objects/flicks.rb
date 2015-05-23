#####
# Pragmatic Studio Ruby Programming
# 04 - Variables and Objects
#####
title = "ghostbusters"

## reverse reverses the characters of a string such that "abc" becomes "cba"
a = title.reverse
puts a

b = a.reverse
puts b

puts title.reverse.reverse

## capitalize converts the 1st character of each word of a string to uppercase.
## rjust right-justify a string and pad its left with a character or a string.
puts title.capitalize.rjust(30, '+-.')

## Space is the default for the 2nd parameter of rjust
puts title.capitalize.rjust(30)

## ljust left-justify a string and pad its right with a character or a string.
formatted_title = title.capitalize.ljust(30, '.')
puts formatted_title

rank = 9
puts "#{formatted_title} #{rank}"