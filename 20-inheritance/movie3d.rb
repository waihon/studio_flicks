#####
# Pragmatic Studio Ruby Programming
# 20 - Inheritance
# This is a new source file in this version
#####
require_relative 'movie'

## < denotes inherits from
class Movie3D < Movie
  attr_reader :wow_factor

  def initialize(name, rank, wow_factor)
    super(name, rank)
    @wow_factor = wow_factor
  end

  def thumbs_up
    ## This supposed to "increase rank by 1 times the wow factor when given
    ## a thumbs up". Technically "super" method will be executed 
    ## 1 times the wow factor.
    @wow_factor.times { super }
  end

  def show_effect
    puts "Wow! " * @wow_factor
  end
end