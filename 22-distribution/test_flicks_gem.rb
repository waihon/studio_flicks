#####
# Pragmatic Studio Ruby Programming
# 22 - Distribution
# This is a new source file.
#####
require 'flicks'

if __FILE__ == $0
  # Handshaking
  puts FlicksGem.hi

  playlist = Flicks::Playlist.new("Kermit")

  movie1 = Flicks::Movie.new("goonies", 10)
  movie2 = Flicks::Movie.new("ghostbusters", 5)
  movie3 = Flicks::Movie.new("goldfinger")

  playlist.add_movie(movie1)
  playlist.add_movie(movie2)
  playlist.add_movie(movie3)

  playlist.play(3)
  
  playlist.print_stats
end
