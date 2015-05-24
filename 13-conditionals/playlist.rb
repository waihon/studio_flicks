#####
# Pragmatic Studio Ruby Programming
# 13 - Conditionals
#####
require_relative 'movie'

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

  def roll_die
    ## Generate a random number between 2 numbers, both inclusive
    rand(1..6)
  end

  def play
    puts "#{@name}'s playlist:"
    puts "@movies:-"
    puts @movies
    puts "@movie:-"
    @movies.each do |movie|
      ## case structure
      case roll_die
      when 1..2
        movie.thumbs_down
        puts "#{movie.title} got a thumbs down."
      when 3..4
        puts "#{movie.title} got skipped."
      else
        movie.thumbs_up
        puts "#{movie.title} got a thumbs up."
      end
      puts movie
    end
  end
end
