#####
# Pragmatic Studio Ruby Programming
# 06 - Methods
#####
def movie_listing(title)
  "Movie: #{title.capitalize}"
end

puts movie_listing("goonies")
puts(movie_listing("goonies"))

a_title = "ghostbusters"
puts movie_listing(a_title)

def movie_listing(title, rank)
  "#{title.capitalize} has a rank of #{rank}."
end

puts movie_listing("goonies", 10)
puts movie_listing("ghostbusters", 9)

## The second parameter has a default value of 0
def movie_listing(title, rank=0)
  "#{title.capitalize} has a rank of #{rank}."
end

puts movie_listing("goonies", 10)
puts movie_listing("ghostbusters", 9)
## Below will output 'Goldfinger has a rank of 0.' due to rank's default value.
puts movie_listing("goldfinder")

## Subsequent definition of methods with the same number of parameters overrides
## the previous definition.
def movie_listing(title, rank=title.length)
  "#{title.capitalize} has a rank of #{rank}."
end

puts movie_listing("goonies", 10)
puts movie_listing("ghostbusters", 9)
## Below will output 'Goldfinger has a rank of 10.' due to rank's default value
## is set to the length of title, which is 10 in this case.
puts movie_listing("goldfinder")

## Subsequent definition of methods with the same number of parameters overrides
## the previous definition
def movie_listing(title, rank=0)
  current_time = Time.new
  ## %A - The full weekday name, e.g. Sunday; %^A - uppercased, e.g. Sunday
  ## %a - The abbreviated weekday name, e.g. Sun; %^a - uppercased, e.g. Sun
  today = current_time.strftime("%A")
  "#{title.capitalize} has a rank of #{rank} as of #{today}"
end

puts movie_listing("goonies", 10)
puts movie_listing("ghostbusters", 9)
puts movie_listing("goldfinder")

def weekday
  current_time = Time.new
  current_time.strftime("%A")
end

def movie_listing(title, rank=0)
  today = weekday
  "#{title.capitalize} has a rank of #{rank} as of #{today}"
end

def movie_listing(title, rank=0)
  "#{title.capitalize} has a rank of #{rank} as of #{weekday}"
end

puts movie_listing("goonies", 10)
puts movie_listing("ghostbusters", 9)
puts movie_listing("goldfinder")

def movie_listing(title, rank=0)
  "#{weekday.upcase}: #{title.capitalize} has a rank of #{rank}."
end

puts movie_listing("goonies", 10)
puts movie_listing("ghostbusters", 9)
puts movie_listing("goldfinder")

def movie_listing(title, rank=0)
  title_formatted = title.capitalize.ljust(30, '.')
  "#{title_formatted} #{rank}"
end

puts movie_listing("goonies", 10)
puts movie_listing("ghostbusters", 9)
puts movie_listing("goldfinder")
