class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist=artist
    @genre=genre
    @@count +=1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    gcount={}
    @@genres.each do |g|
    gcount[g] = @@genres.count(g)
  end
  gcount
  end

  def self.artist_count
    acount={}
    @@artists.each do |a|
    acount[a] = @@artists.count(a)
  end
  acount
  end

end
