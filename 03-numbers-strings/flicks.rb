#####
# Pragmatic Studio Ruby Programming
# 03 - Numbers and Strings
#####
puts 'Mike loves Goonies'

## \' denotes an apostrophe within a ' delimited string
puts 'Mickey\'s favorite movie is Goonies'

movie = 'Goonies'
## + operator concatenates 2 strings
puts 'Mickey\'s favorite movie is ' + movie

## \n denotes a newline within a " delimited string
puts "Mikey's favorite movie is \nGoonies"

rank = 10
## #{} hosts an expression within a " delimited string
puts "#{movie} has a rank of #{rank}"

## Ruby language is case sensitive. Movie is not movie and time is not Time.
puts "#{movie} has a rank of #{rank * 2} as of #{Time.new}"