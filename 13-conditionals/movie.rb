#####
# Pragmatic Studio Ruby Programming
# 13 - Conditionals
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
end
