#####
# Pragmatic Studio Ruby Programming
# 16 - Symbols and Structs
# This version has no changes.
#####
class Movie
  attr_accessor :title
  attr_reader :rank

  def initialize(title, rank=0)
    @title = title.capitalize
    @rank = rank
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
