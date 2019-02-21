#song class needs to show us
# list of all artists and genres,
#count of songs it creates, count of # songs each genre creates
#song class should reveal number of songs each artist is responsible for

class Song
  @@count = 0

  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count += 1
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
    genresCount = Hash.new 0
    @@genres.each do |genre|
      genresCount[genre] += 1
    end
    genresCount
  end

  def self.artist_count
    artistCount = Hash.new 0
    @@artists.each do |artist|
      artistCount[artist] += 1
    end
    artistCount
  end

end
