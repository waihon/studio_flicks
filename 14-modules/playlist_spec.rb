#####
# Pragmatic Studio Ruby Programming
# 14 - Modules
# This version has the following changes:
# 1. Changed allow(@playlist) to allow(WaldorfAndStatler)
#####
require_relative 'playlist'
require_relative 'movie'

describe Playlist do
  before do
    @playlist = Playlist.new("Kermit")
    $stdout = StringIO.new
  end

  it "has a name" do
    expect(@playlist.name).to eq("Kermit")
  end

  context "being played with one movie" do
    before do
      @initial_rank = 10
      @movie = Movie.new("goonies", @initial_rank)

      @playlist.add_movie(@movie)
    end

    it "gives the movie a thumbs up if a high number is rolled" do
      ## Old syntax of RSpec: object.stub(:method_name).and_return(forced_value)
      #@playlist.stub(:roll_die).and_return(6)

      ## New syntax of RSpec: allow(object).to receive(:method_name).and_return(forced_value)
      allow(WaldorfAndStatler).to receive(:roll_die).and_return(6)
      @playlist.play
      expect(@movie.rank).to eq(@initial_rank + 1)

      allow(WaldorfAndStatler).to receive(:roll_die).and_return(5)
      @playlist.play
      expect(@movie.rank).to eq(@initial_rank + 2)
    end

    it "skips the movie if a medium number is rolled" do
      allow(WaldorfAndStatler).to receive(:roll_die).and_return(4)
      @playlist.play
      expect(@movie.rank).to eq(@initial_rank)

      allow(WaldorfAndStatler).to receive(:roll_die).and_return(3)
      @playlist.play
      expect(@movie.rank).to eq(@initial_rank)
    end

    it "gives the movie and thumbs down if a low number is rolled" do
      allow(WaldorfAndStatler).to receive(:roll_die).and_return(2)
      @playlist.play
      expect(@movie.rank).to eq(@initial_rank - 1)

      allow(WaldorfAndStatler).to receive(:roll_die).and_return(1)
      @playlist.play
      expect(@movie.rank).to eq(@initial_rank - 2)
    end
  end
   
  after(:all) do
    $stdout = STDOUT
  end 
end