class Song
attr_accessor :name, :genre, :artist

@@all = [ ]

def initialize (name)
    @name = name
    @genre = genre
    @@all << self
end
    
def self.all
    @@all
end

def artist_name
    if artist
        self.artist.name
    else
        nil
    end
end



end
