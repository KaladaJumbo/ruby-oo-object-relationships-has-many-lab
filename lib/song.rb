require_relative './artist'

class Song 

    attr_accessor :name, :artist
    @@all = []

    def initialize (name)

        @name = name
        self.save
        @artist = nil

    end

    def save

        Song.all << self

    end

    def self.all

        @@all

    end

    def artist_name

        if self.artist == nil
            return nil
        else
            return self.artist.name
        end

    end

end