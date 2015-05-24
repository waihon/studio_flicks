#####
# Pragmatic Studio Ruby Programming
# 12 - Testing
#####
class Playlist
  attr_reader :name
  
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
