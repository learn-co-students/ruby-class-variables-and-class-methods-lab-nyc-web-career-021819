class Song 
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1        #adds 1 to count when new song is created
    @@artists << artist     #pushing artist values into array
    @@genres << genre       #pushing genre values into array
  end
  
  def self.count      
    @@count            
  end
  
  def self.artists
    @@artists.uniq    #unique values only
  end
  
  def self.genres
    @@genres.uniq     #unique values only
  end
  
  def self.genre_count
    genre_hash = {}              #new empty hash
    @@genres.each do |genre|     #iterate thru @@genres
      if genre_hash[genre]       #if genre key value is present,                           increment 1
        genre_hash[genre] += 1 
      else
        genre_hash[genre] = 1    #if key value doesnt match, make                         new key/value pair and set to 1
      end
    end
    genre_hash
  end
  
  def self.artist_count
    artist_hash = {}              #new empty hash
    @@artists.each do |artist|    #iterate thru @@artist
      if artist_hash[artist]      #if artist key value is present,                           increment 1
        artist_hash[artist] += 1 
      else
        artist_hash[artist] = 1   #if key value doesnt match, make                         new key/value pair and set to 1
      end
    end
    artist_hash
  end
  
end