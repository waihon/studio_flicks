#####
# Pragmatic Studio Ruby Programming
# 21 - Mixins
# This version has changes:
# 1. Require 'rankable'
# 2. Include Rankable
# 3. Refactor rank-related methods into Rankable module
#####

require_relative 'snack_bar'
require_relative 'rankable'

class Movie
  include Rankable

  attr_accessor :title
  attr_reader :rank

  def initialize(title, rank=0)
    @title = title.capitalize
    @rank = rank
    ## Declare a new hash with the default value 0 in the case of 
    ## non-existence of key.
    @snack_carbs = Hash.new(0)
  end

  def ate_snack(snack)
    @snack_carbs[snack.name] += snack.carbs
    puts "#{@title} led to #{snack.carbs} #{snack.name} carbs being consumed."
    puts "#{title}'s snacks: #{@snack_carbs}"
  end

  def carbs_consumed
    ## "reduce" takes in an array and reduces it to a single value.
    ## It does this by taking an initial value, iterating through a list,
    ## keeping and transforming a running total along the way.
    ## http://railspikes.com/2008/8/11/understanding-map-and-reduce
    @snack_carbs.values.reduce(0, :+)
  end

  ## Customer iterator
  def each_snack
    @snack_carbs.each do |name, carbs|
      yield Snack.new(name, carbs)
    end
  end
  
  def to_s
    "#{@title} has a rank of #{rank} (#{status})."
  end

  def to_csv
    "#{@title},#{@rank}"
  end

  def self.from_csv(string)
    ## Split a delimited string and assign them to variables
    title, rank = string.split(",")
    ## Use Integer to convert a string to an integer.
    ## If the string is not of numeric form then an error will be raised.
    new(title, Integer(rank))
  end
end

## Only run the following code when this file is the main file being run
## instead of being required or loaded by another file.
if __FILE__ == $0
  movie = Movie.new("goonies", 10)
  puts "Initial carbs consumed: #{movie.carbs_consumed}"
  movie.ate_snack(SnackBar.random)
  movie.ate_snack(SnackBar.random)
  movie.ate_snack(SnackBar.random)
  puts "Total carbs consumed: #{movie.carbs_consumed}"
  puts movie.title
  puts movie.rank
  movie.thumbs_up
  puts movie.rank
  movie.thumbs_down
  puts movie.rank
end
