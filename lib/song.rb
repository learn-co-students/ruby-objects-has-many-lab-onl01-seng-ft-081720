class Song
    attr_accessor :name
    
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist=(artist_name)
        @artist = artist_name
    end

    def artist
        @artist
    end

    def artist_name
        artist.name if artist
    end
end