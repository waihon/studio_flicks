#####
# Pragmatic Studio Ruby Programming
# 17 - Hashes
# This version has changes:
# 1. Declare a new instanace variable named @snack_carbs.
# 2. Define a new ate_snack(snack) method.
# 3. Define a new carbs_consumed method.
#####
class Movie
  attr_accessor :title
  attr_reader :rank

  def initialize(title, rank=0)
    @title = title.capitalize
    @rank = rank
    ## Declare a new hash with the default value 0 in the case of 
    ## non-existence of key.
    @snack_carbs = Hash.new(0)
  end

  def thumbs_up
    @rank += 1
  end

  def thumbs_down
    @rank -= 1
  end

  ## The question mark indicates the method would return a boolean value.
  def hit?
    @rank >= 10
  end

  def status
    hit? ? "Hit" : "Flop"
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
  
  def to_s
    "#{@title} has a rank of #{rank} (#{status})."
  end

  ## <=> is called Combined Comparison operator.
  ## It returns:
  ##   0 if first operand equals the second one;
  ##  +1 if first operand is greater than the second one;
  ##  -1 if first operand is less than the second one.
  ## http://www.tutorialspoint.com/ruby/ruby_operators.htm
  def <=>(other)
    # Descending order
    other.rank <=> @rank
  end
end

## Only run the following code when this file is the main file being run
## instead of being required or loaded by another file.
if __FILE__ == $0
  movie = Movie.new("goonies", 10)
  puts movie.title
  puts movie.rank
  movie.thumbs_up
  puts movie.rank
  movie.thumbs_down
  puts movie.rank
end
