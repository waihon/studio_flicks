#####
# Pragmatic Ruby Programming
# 17 - Hashes
# This version has no changes.
#####
require_relative 'snack_bar'

describe Snack do
  before do
    @snack = Snack.new(:pretzel, 10)
  end

  it "has a name attribute" do
    expect(@snack.name).to eq(:pretzel)
  end

  it "has a carbs attribute" do
    expect(@snack.carbs).to eq(10)
  end
end

describe SnackBar do
  it "has a trove of treasures" do
    ## Array as a method called "empty?"
    expect(SnackBar::SNACKS).not_to be_empty
  end

  it "returns a random treasure" do
    snack = SnackBar.random

    ## Use "include" matcher to specify that a collection includes one
    ## or more expected objects.
    expect(SnackBar::SNACKS).to include(snack)
  end
end