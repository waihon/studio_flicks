#####
# Pragmatic Studio Ruby Programming
# 12 - Testing
#####
require_relative 'playlist'
require_relative 'movie'

describe Playlist do
  before do
    @playlist = Playlist.new("Kermit")
  end

  it "has a name" do
    expect(@playlist.name).to eq("Kermit")
  end

  it "gives each movie 2 thumbs up and 1 thumbs down when played" do
    initial_rank = 10
    movie = Movie.new("goonies", initial_rank)

    @playlist.add_movie(movie)
    @playlist.play

    expect(movie.rank).to eq(initial_rank + 1 + 1 - 1)
  end
end