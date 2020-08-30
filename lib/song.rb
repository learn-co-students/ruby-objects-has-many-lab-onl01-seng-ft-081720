
# single source of truth
# CREDIT CARD
# Song class holds onto an object of an artist




class Song
    attr_accessor :name, :artist
    @@all = []

    def initialize(name)
        @name = name
        @artist = artist # this is the LINK on initialization
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if self.artist
            @artist.name
        else
            nil

        end

    end


end
