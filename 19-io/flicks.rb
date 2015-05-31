#####
# Pragmatic Studio Ruby Programming
# 19 - IO
# This version has changes:
# 1. Load playlist from a file.
# 2. Prompt from number of viewings.
# 3. Prompt for 'quit' to exit.
#####
require_relative 'movie'
require_relative 'playlist'

# Load movies from a file
playlist = Playlist.new("Kermit")

## ARGV.shift gets the next argument (if any) from the command line.
## "movies.csv" is the default filename in case no argument is provided.
playlist.load(ARGV.shift || "movies.csv")

## Infite loop
loop do
  puts "\nHow many viewings ('quit' to exit)"
  ## chomp removes newline character from the input
  answer = gets.chomp.downcase
  case answer
  ## ^ is a type of anchor and it matches beginning of line
  ## $ is also a type of anchor and it matches end of line
  ## \d+ matches 1 or more digit [0-9]
  when /^\d+$/
    playlist.play(answer.to_i)
  when 'quit', 'exit'
    playlist.print_stats
    break
  else
    puts "Please enter a number or 'quit'"
  end
end

playlist.save