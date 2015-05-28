#####
# Pragmatic Studio Ruby Programming
# 15 - Modules
# This version has the following changes:
# 1. Change play method to play(viewings)
# 2. Add print_stats method
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

  def play(viewings)
    puts "#{@name}'s playlist:"
    puts @movies.sort

    ## Iterate the given block, passing in integer value
    ## from int (1) up to and including limit (viewings).
    1.upto(viewings) do |count|
      puts "\nViewing #{count}:"
      @movies.each do |movie|
        WaldorfAndStatler.review(movie)
        puts movie
      end
    end
  end

  def print_stats
    puts "\n#{@name}'s Stats:"

    ## Create 2 arrays from an existing array based on a boolean method
    ## or attributes of its element.
    hits, flops = @movies.partition { |movie| movie.hit? }

    puts "\nHits:"
    puts hits.sort

    puts "\nFlops:"
    puts flops.sort
  end
end