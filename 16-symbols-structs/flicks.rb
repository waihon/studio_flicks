#####
# Pragmatic Studio Ruby Programming
# 16 - Symbols and Structs
# This version has no changes.
#####
require_relative 'movie'
require_relative 'playlist'

movie1 = Movie.new("goonies", 10)
movie2 = Movie.new("ghostbusters", 5)
movie3 = Movie.new("goldfinger")

# First playlist
playlist = Playlist.new("Kermit")
playlist.add_movie(movie3)  # rank = 0
playlist.add_movie(movie2)  # rank = 9
playlist.add_movie(movie1)  # rank = 10
playlist.play(3)
playlist.print_stats
puts

# Second playlist
playlist2 = Playlist.new("Fozzie")
movie4 = Movie.new("gremlins", 1)
playlist2.add_movie(movie4) # rank = 1
playlist2.add_movie(movie1) # rank = 10
playlist2.play(2)
playlist2.print_stats