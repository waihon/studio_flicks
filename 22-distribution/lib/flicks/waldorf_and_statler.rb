#####
# Pragmatic Studio Ruby Programming
# 22 - Distribution
# This version has changes:
# 1. Embed WaldorfAndStatler module within Flicks module.
#####
module Flicks
  module WaldorfAndStatler
    ## Adding self in front of a method make it callable by 
    ## qualifying it with a module name or class name.
    def self.roll_die
      ## Generate a random number between 2 numbers, both inclusive
      rand(1..6)
    end

    def self.review(movie)
      ## case structure
      case roll_die
      when 1..2
        movie.thumbs_down
        puts "#{movie.title} got a thumbs down."
      when 3..4
        puts "#{movie.title} was skipped."
      else
        movie.thumbs_up
        puts "#{movie.title} got a thumbs up!"
      end
    end
  end
end