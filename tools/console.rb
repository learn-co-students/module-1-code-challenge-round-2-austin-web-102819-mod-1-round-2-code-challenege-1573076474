# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

hp = Movie.new('Harry Potter')
sw = Movie.new('Star Wars')
lotr = Movie.new('Lord Of The Rings')

buford = Viewer.new('buford')
casey = Viewer.new('casey')
adam = Viewer.new('adam')

br = Review.new(buford,hp,10)
br2 = Review.new(buford,sw,8)
cr = Review.new(casey,sw,9)
ar = Review.new(adam,lotr,8)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
