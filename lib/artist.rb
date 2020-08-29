require 'pry'

class Artist
    attr_accessor :name#

    def initialize(name)
        @name = name
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(title)
        new_song = Song.new(title)
        add_song(new_song)
    end
    
    def songs
        Song.all.select {|song| song.artist == self}
    end
    
    def self.song_count
       Song.all.count
    end
end
