require "pry"

class Song

  attr_accessor :name, :artist, :genre

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  @@count = 0

  def self.count
    @@count
  end

  @@artists = []
  @@genres = []

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genres_hash = {}
    @@genres.each do |genr|
      if genres_hash[genr]
        genres_hash[genr] += 1
      else
        genres_hash[genr] = 1
      end
    end
    genres_hash
  end

  def self.artist_count
    artists_hash = {}
    @@artists.each do |singer|
      if artists_hash[singer]
        artists_hash[singer] += 1
      else
        artists_hash[singer] = 1
      end
    end 
      artists_hash
  end


end
