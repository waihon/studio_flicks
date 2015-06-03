#####
# Pragmatic Studio Ruby Programming
# 22 - Distribution
# There are changes in this version:
# 1. Embed Movie3D class within Flicks module.
# 2. Remove test code.
#####
require_relative 'movie'

module Flicks
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
end