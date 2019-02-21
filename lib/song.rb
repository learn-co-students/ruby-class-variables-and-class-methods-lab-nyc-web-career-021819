class Song
    @@count = 0
    @@artists = []
    @@genres = []
    
    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

#     .count
#     is a class method that returns that number of songs created (FAILED - 1)
#   .artists
#     is a class method that returns a unique array of artists of existing songs (FAILED - 2)
#   .genres
#     is a class method that returns a unique array of genres of existing songs (FAILED - 3)
#   .genre_count
#     is a class method that returns a hash of genres and the number of songs that have those genres (FAILED - 4)
#   .artist_count
#     is a class method that returns a hash of artists and the number of songs that have those artists (FAILED - 5)

    def self.count
        @@count
    end

    def self.artists
        uniq_artists = []
        @@artists.select do |artist|
            if uniq_artists.include?(artist) == false
                uniq_artists << artist
            end
        end
            uniq_artists
    end

    def self.genres
        uniq_genres = []
        @@genres.select do |genre|
            if uniq_genres.include?(genre) == false
                uniq_genres << genre
            end
        end
            uniq_genres
    end

    def self.genre_count
        #create initial hash
        genre_count_h = {}

        #get unique genres and put as keys
        @@genres.each do |genre|
            if genre_count_h != {}
                if genre_count_h[genre] != nil
                    genre_count_h[genre] += 1
                else
                    genre_count_h[genre] = 0
                    genre_count_h[genre] +=1
                end
            else
                genre_count_h[genre] = 0
                genre_count_h[genre] += 1
            end
        end

        genre_count_h
    end

    def self.artist_count
        #create initial hash
        artist_count_h = {}

        #get unique artists and put as keys
        @@artists.each do |artist|
            if artist_count_h != {}
                if artist_count_h[artist] != nil
                    artist_count_h[artist] += 1
                else
                    artist_count_h[artist] = 0
                    artist_count_h[artist] +=1
                end
            else
                artist_count_h[artist] = 0
                artist_count_h[artist] += 1
            end
        end

        artist_count_h
    end


end