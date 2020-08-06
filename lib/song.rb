require 'pry'

class Song
  attr_accessor :name, :artist, :genre #this is saying that each instance of the Song class has a name, artist, and genre. 

  @@count = 0 # the Song class keeping track of the number of songs it creates, defined below!
  @@genres = [] # keeping track of all genres of existing Song classes
  @@artists = [] # Song class showing us artists pt 1 

  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count # the count/number of how many instances of the Song class is being kept track of
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists # Defining the artist of the instance of Song class pt 2
    @@artists.uniq!
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre] #if the genre is already in the hash
        genre_count[genre] += 1
      else #if it's a new genre
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist] #if the artist is already in the hash
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
end