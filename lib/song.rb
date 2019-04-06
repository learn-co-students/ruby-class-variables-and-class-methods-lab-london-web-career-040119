class Song # Define our Song class
  attr_accessor :name, :artist, :genre # when we produce a new song we want each one to have a name, artist and genre - so here we use the accessor to be able to define these three methods and be able to read and write them.

  @@count = 0 # setting count to be a class variable - this will be use to keep track of the number of songs we have in our song class - ofcourse at the start the count is 0 - and this will change as we add songs
  @@artists = [] # we also need artists to be a class variable to keep track of all the artists we have in our class - set this to an empty array which will be added to each time a song is added with a new artist
  @@genres = [] # aslo setting genres as class variable so we can keep a list of all thr genres of the songs in our class - set this to an empty array which will be added to each time a song is added with a new genre

  def initialize(name, artist, genre) # when creating a new song we want it to be passed with not just a name but also an artist and genre.
    @name = name # setting name as an instant variable
    @artist = artist # setting artist as an instant variable
    @genre = genre # setting genre as an instant variable
    @@count +=1 # this will make sure that 1 is added to the count everytime a song is added to the class
    @@genres << genre # this will push each genre added for a new instant to the genres array
    @@artists << artist   # this will push each artist added for a new instant to the artist array
  end # end of initialize method

  def self.count # this class method will be used to call upon our count class variable and print the number of songs.
    @@count # we just need to call the variable since it will print the last line and this is the only line
  end # end of count

  def self.artists # here we use a class method to make sure our class variable artists has a unique array - since we way add two different song with same artist we only need to print that artists name one - we dont need it multiple times. - we use self to call upon the class itself
    @@artists.uniq # we will use the .uniq method will which print out the uniq version of the artists array
  end # end of artists class method

  def self.artist_count # this class method will be used to return a hash of the artists and the number of songs that they have
    artist_count = {} # firstly we create a new empty hash which we will be adding too
    @@artists.each do |artist| # now we are going to use .each to iterate over each artist in the artists array
      if artist_count[artist] # using conditional statements - each time the artist name exists then - this will also past artist as a new key in our new hash for each new artist
        artist_count[artist] += 1 # then we add 1 to the artists count
      else # else we will...
        artist_count[artist] = 1 # we will just set the new artist name key equal to 1
      end # end of conditional statements
    end # end of out iteration
    artist_count # finally we want the method to print the new artist count hash that we have created
  end # end of artist count class method

  def self.genres   # here we use a class method to make sure our class variable genres has a unique array - since we way add two different song with same genre we only need to print that genre name one - we dont need it multiple times. - we use self to call upon the class itself
    @@genres.uniq   # we will use the .uniq method will which print out the uniq version of the genre array
  end # end of genres method

  def self.genre_count # this class method will repeat the exact process as artist count above -  returning a hash that tells us for each genre key have many songs it has in that genre 
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
end
