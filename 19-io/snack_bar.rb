#####
# Pragmatic Studio Ruby Programming
# 19 - IO
# This version has no changes.
#####

# Declare a new structure
Snack = Struct.new(:name, :carbs)

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
  SNACKS_COUNT = SNACKS.size  #=> 5

  def self.random
    SNACKS.sample
  end
end

if __FILE__ == $0
  puts "\nSnacks:"
  ## To access a module's constant, the scope operator :: must be used.
  puts "\nSnacks: #{SnackBar::SNACKS}"
  puts "\nSNACKS_COUNT: #{SnackBar::SNACKS_COUNT}"
  ## To access a module's method, :: may be used even though . is more common.
  puts "\nrandom: #{SnackBar.random}"
  puts "\nrandom: #{SnackBar::random}"
end