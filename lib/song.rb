class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end


  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genres_hash = Hash.new
    @@genres.each do |item|
      if genres_hash.key?(item)
        genres_hash[item] += 1
      else genres_hash[item] = 1
      end
    end
    return genres_hash
  end

  def self.artist_count
    artists_hash = Hash.new
    @@artists.each do |item|
      if artists_hash.key?(item)
        artists_hash[item] += 1
      else artists_hash[item] = 1
      end
    end
    return artists_hash
  end

end
