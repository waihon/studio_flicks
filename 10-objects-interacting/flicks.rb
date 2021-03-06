#####
# Pragmatic Studio Ruby Programming
# 10 - Objects Interacting
#####
class Movie
  attr_accessor :title
  attr_reader :rank

  def initialize(title, rank=0)
    @title = title.capitalize
    @rank = rank
  end

  def thumbs_up
    @rank += 1
  end

  def thumbs_down
    @rank -= 1
  end

  def to_s
    "#{@title} has a rank of #{rank}."
  end
end

class Playlist
  def initialize(name)
    @name = name
    ## Declare an empty array
    @movies = []
  end

  def add_movie(a_movie)
    ## Append an element to an array
    @movies << a_movie
  end

  def play
    puts "#{@name}'s playlist:"
    puts "@movies:-"
    puts @movies
    puts "@movie:-"
    @movies.each do |movie|
      movie.thumbs_up
      movie.thumbs_up
      movie.thumbs_down
      puts movie
    end
  end
end

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