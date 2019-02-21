require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  @@count = 0

  def self.count
    @@count
  end

  @@genres = []

  def self.genres
    @@genres.uniq
  end

  @@artists = []

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    new_hash = {}
    @@genres.each do |genre|
      # if new_hash[genre]
      #   new_hash[genre] += 1
      # else
      #   new_hash[genre] = 1
      # end
      new_hash[genre] ||= 0
      new_hash[genre] += 1
    end
    new_hash
  end

  def self.artist_count
    new_hash = {}
    @@artists.each do |artist|
      new_hash[artist] ||= 0
      new_hash[artist] += 1
    end
    new_hash
  end

end
