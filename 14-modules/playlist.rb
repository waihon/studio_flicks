#####
# Pragmatic Studio Ruby Programming
# 14 - Modules
# This version has the following changes:
# 1. Refactor roll_die to a module
# 2. Refactor checking of result from roll_die and the corresponding
#    action to a module
#####
require_relative 'movie'
require_relative 'waldorf_and_statler'

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
    puts @movies
    @movies.each do |movie|
      WaldorfAndStatler.review(movie)
      puts movie
    end
  end
end