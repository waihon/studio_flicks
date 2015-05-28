#####
# Pragmatic Studio Ruby Programming
# 15 - Blocks
# There are no changes in this version.
#####
require_relative 'movie'
require_relative 'playlist'

movie1 = Movie.new("goonies", 10)
movie2 = Movie.new("ghostbusters", 5)
movie3 = Movie.new("goldfinger")

# First playlist
playlist = Playlist.new("Kermit")
playlist.add_movie(movie1)
playlist.add_movie(movie2)
playlist.add_movie(movie3)
playlist.play
puts

# Second playlist
playlist2 = Playlist.new("Fozzie")
playlist2.add_movie(movie1)
movie4 = Movie.new("gremlins", 1)
playlist2.add_movie(movie4)
playlist2.play