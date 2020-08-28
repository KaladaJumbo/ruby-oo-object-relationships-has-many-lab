require_relative './song'

class Artist

    attr_accessor :name

    def initialize (name)
        @name = name
    end

    def songs

        Song.all.select {|init_song| init_song.artist == self }

    end

    def add_song(song)

        song.artist = self

    end

    def add_song_by_name(name)

        init_song = Song.new(name)
        init_song.artist = self

    end

    def self.song_count

        has_artist = []
        Song.all.each do |int_song| 
            if int_song.artist_name != nil
                has_artist << int_song
            end
        end
        
        return has_artist.count 

    end

end