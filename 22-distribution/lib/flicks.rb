#####
# Pragmatic Studio Ruby Programming
# Make your own gem: http://guides.rubygems.org/make-your-own-gem
# 1. $ gem build ./flicks.gemspec
# 2. $ gem install ./flicks-1.0.0.gem
# 3. $ irb
# 4. > require 'flicks'
# 5. > FlicksGem.hi
#
# The convention is to have one Ruby file with the same name as our gem,
# since that gets loaded when "require 'flicks'" is being run.
# This file is in charge of setting up our gem's code and API.
#####

## Since there's already a module named Flicks, we can't use the
## same name of the class.
class FlicksGem
  def self.hi
    puts "Hello world!"
  end
end

require 'flicks/movie'
require 'flicks/movie3d'
require 'flicks/playlist'
require 'flicks/rankable'
require 'flicks/snack_bar'
require 'flicks/waldorf_and_statler'