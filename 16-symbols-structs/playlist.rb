#####
# Pragmatic Studio Ruby Programming
# 16 - Symbols and Structs
# This version has changes:
# 1. Require snack_bar
# 2. Add logic for snack bar and snacks
#####
require_relative 'movie'
require_relative 'waldorf_and_statler'
require_relative 'snack_bar'

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

    ## "sort" returns a new and sorted array, i.e. the original array
    ## would not be sorted. To sort the original array, use "sort!" instead.
    puts @movies.sort

    snacks = SnackBar::SNACKS
    puts "\nThere are #{snacks.size} snacks available in the snack bar."
    snacks.each do |snack|
      puts "#{snack.name} has #{snack.carbs} carbs"
    end

    ## Iterate the given block, passing in integer value
    ## from int (1) up to and including limit (viewings).
    1.upto(viewings) do |count|
      puts "\nViewing #{count}:"
      @movies.each do |movie|
        WaldorfAndStatler.review(movie)
        snack = SnackBar.random
        puts "#{movie.title} led to #{snack.carbs} #{snack.name} carbs being consumed."
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