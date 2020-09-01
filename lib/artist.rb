class Artist
    @@song_count=0
    
    attr_accessor :name, :songs
    
    def initialize(name)
        @name = name
    end
    def songs
        Song.all.select do |song| 
            song.artist == self
        end 
    end
    def add_song(song)
        song.artist = self
        @@song_count += 1
    end
    def add_song_by_name(song)
        song = Song.new(song)
        song.artist = self
    end
    def self.song_count
        Song.all.count
    end
end