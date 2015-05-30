#####
# Pragmatic Studio Ruby Programming
# 17 - Hashes
# This version has changes:
# 1. Call Movie's ate_snack method.
# 2. Define a new total_carbs_consumed method.
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
        movie.ate_snack(snack)
        puts movie
      end
    end
  end

  def total_carbs_consumed
    @movies.reduce(0) { |sum, movie| sum + movie.carbs_consumed }
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

    puts "\n#{total_carbs_consumed} total carbs consumed"
    @movies.sort.each do |movie|
      puts "\n#{movie.title}'s snack totals:"
      puts "#{movie.carbs_consumed} grand total carbs"
    end
  end
end