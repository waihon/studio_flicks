#####
# Pragmatic Studio Ruby Programming
# 21 - Mixins
# There is no changes in this version.
#####
require_relative 'movie3d'

describe Movie3D do
  before do
    @initial_rank = 10
    @wow_factor = 5
    @movie = Movie3D.new("glee", @initial_rank, @wow_factor)

    $stdout = StringIO.new
  end

  it "has a title" do
    expect(@movie.title).to eq("Glee")
  end

  it "has a rank" do
    expect(@movie.rank).to eq(10)
  end

  it "has a wow factor" do
    expect(@movie.wow_factor).to eq(5)
  end

  it "increases rank by 1 times the wow factor when given a thumbs up" do
    @movie.thumbs_up

    expect(@movie.rank).to eq(@initial_rank + (1 * @wow_factor))
  end

  it "decreases rank by 1 when given a thumbs down" do
    @movie.thumbs_down

    expect(@movie.rank).to eq(@initial_rank - 1)
  end

  after(:all) do
    $stdout = STDOUT
  end
end