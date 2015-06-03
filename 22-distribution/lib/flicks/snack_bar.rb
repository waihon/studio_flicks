#####
# Pragmatic Studio Ruby Programming
# 22 - Distribution
# This version has changes:
# 1. Embed SnackBar module within Flicks module.
# 2. Remove test code.
#####

# Declare a new structure
Snack = Struct.new(:name, :carbs)

module Flicks
  module SnackBar
    ## Declare and define a constant (in uppercase)
    SNACKS = [
      Snack.new(:nachoa,   40),
      Snack.new(:popcorn,  20),
      Snack.new(:candy,    15),
      Snack.new(:pretzel,  10),
      Snack.new(:soda,      5)
    ]

    SNACKS_COUNT = 0
    ## Not supposed to change the value of a constant. Eventhough there's 
    ## no runtime error, a warning will be raised nonetheless.
    #SNACKS_COUNT = SNACKS.size  #=> 5

    def self.random
      SNACKS.sample
    end
  end
end