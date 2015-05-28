#####
# Pragmatic Studio Ruby Programming
# 15 - Blocks
# This version has the following changes:
# 1. Add a new example "is sorted by decreasing rank"
#####
require_relative 'movie'

describe Movie do
  context "created with an initial rank" do
    ## "before" block will be executed before each example within the context.
    before do
      @initial_rank = 10
      @movie = Movie.new("goonies", @initial_rank)
    end

    it "has a capitalized title" do
      ## Using `should` from rspec-expectations' old `:should` syntax 
      ## without explicitly enabling the syntax is deprecated.
      #@movie.title.should == "Goonies"
      expect(@movie.title).to eq("Goonies")
    end

    it "has an initial rank" do
      expect(@movie.rank).to eq(10)
    end

    it "has a string representation" do
      expect(@movie.to_s).to eq("Goonies has a rank of 10 (Hit).")
    end

    it "increases rank by 1 when given a thumbs up" do
      @movie.thumbs_up
      expect(@movie.rank).to eq(@initial_rank + 1)
    end

    it "decreases rank by 1 when given a thumbs down" do
      @movie.thumbs_down
      expect(@movie.rank).to eq(@initial_rank - 1)
    end
  end

  context "created with a default rank" do
    before do
      @movie = Movie.new("goonies")
    end

    it "has a rank of 0" do
      expect(@movie.rank).to eq(0)
    end

    it "has a string representation" do
      expect(@movie.to_s).to eq("Goonies has a rank of 0 (Flop).")
    end
  end

  context "with a rank of at least 10" do
    before do
      @movie = Movie.new("goonies", 10)
    end

    it "is a hit" do
      ## Old RSpec syntax: should be_xxx
      #@movie.should be_hit

      ## New RSpec syntax: 
      ## be_xxx for those methods that return a boolean value, e.g. hit?
      expect(@movie).to be_hit
    end

    it "has a hit status" do
      expect(@movie.status).to eq("Hit")
    end
  end

  context "with a rank of less than 10" do
    before do
      @movie = Movie.new("goonies", 9)
    end

    it "is not a hit" do
      expect(@movie).not_to be_hit
    end

    it "has a flop status" do
      expect(@movie.status).to eq("Flop")
    end
  end

  it "is sorted by decreasing rank" do
    movie1 = Movie.new("goonies", 100)
    movie2 = Movie.new("ghostbusters", 200)
    movie3 = Movie.new("goldfinger", 300)

    movies = [movie1, movie2, movie3]

    expect(movies.sort).to eq([movie3, movie2, movie1])
  end
end