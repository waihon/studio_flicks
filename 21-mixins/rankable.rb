#####
# Pragmatic Studio Ruby Programming
# 21 - Mixins
# This is a new source file.
#####
module Rankable
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