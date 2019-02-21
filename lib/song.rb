require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}
  
  def add_item(item,array,hash)
    if array.include?(item)
      hash[item] += 1
    else
      #this takes an array of either @@artists or @@genres and then pushes an item [ie an artist name] to it, then adds it to a hash of either @@artist_count or @@genre_count
      #second edit: when this was in the above piece was right array.push(item)
      hash[item] = 1
    end
  end
    
  def initialize(name, artist, genre)
    @genre = genre
    @artist = artist
    @name = name
    @@count += 1
    add_item(artist,@@artists,@@artist_count)
    add_item(genre,@@genres,@@genre_count)
    @@artists.push(artist)
    @@genres.push(genre)
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artist_count.keys
  end
  
  def self.genres
    @@genre_count.keys
  end
  
  def self.genre_count
    @@genre_count
  end
  
  def self.artist_count
    @@artist_count
  end
  
end