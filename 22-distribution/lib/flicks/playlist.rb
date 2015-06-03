#####
# Pragmatic Studio Ruby Programming
# 22 - Distribution
# This version has changes:
# 1. Embed Playlist class within Flicks module.
#####
require_relative 'movie'
require_relative 'waldorf_and_statler'
require_relative 'snack_bar'
require_relative 'movie3d'

module Flicks
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
        movie.each_snack do |snack|
          puts "#{snack.carbs} total #{snack.name} carbs"
        end
        puts "#{movie.carbs_consumed} grand total carbs"
      end
    end

    def load(from_file)
      File.readlines(from_file).each do |line|
        add_movie(Movie.from_csv(line))
      end
    end

    def save(to_file="movie_rankings.csv")
      ## File modes: https://www.udemy.com/blog/ruby-file-open/
      ## Read-only: r
      ## Write-only: w
      ## Append-only: a
      ## Read-write (file pointer is positioned at the beginning): r+
      ## Read-write (overwrites an existing file first): w+
      ## Read-write (file pointer is positioned at the end): a+   
      File.open(to_file, "w") do |file|
        ## http://stackoverflow.com/questions/12084507/what-does-the-map-method-do-in-ruby
        ## The map method takes an enumerable object and a block, and runs 
        ## the block for each element, outputting each returned value from 
        ## the block (the original object is unchanged unless you use map!)     
        file.puts @movies.sort.map { |movie| movie.to_csv }
      end
    end
  end
end