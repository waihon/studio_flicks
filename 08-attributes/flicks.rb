#####
# Pragmatic Studio Ruby Programming
# 08 - Attributes
#####
class Movie
  ## attr_accessor: read-write, i.e. getter and setter will be defined automatically
  attr_accessor :title
  ## attr_reader: read-only, i.e. getter will be defined automatically
  attr_reader :rank

  def title=(new_title)
    @title = new_title.capitalize
  end

  def rank=(new_rank)
    @rank = new_rank
  end

  def initialize(title, rank=0)
    self.title = title
    self.rank = rank
  end

  def thumbs_up
    @rank += 1
  end

  def thumbs_down
    @rank -= 1
  end

  def normalized_rank
    @rank / 10
  end

  ## to_s returns the defaulted text when a class instance is being "puts"
  def to_s
    "#{title} has a rank of #{rank}."
  end
end

movie = Movie.new("goonies", 10)
movie.thumbs_up
movie.thumbs_up
movie.thumbs_down
puts movie
puts movie.title
movie.title = "gooneys!"
puts movie.title
puts movie.rank
puts movie.normalized_rank

