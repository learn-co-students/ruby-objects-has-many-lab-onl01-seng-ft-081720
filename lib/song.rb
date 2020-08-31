# Song
#   #new
#     is initialized with an argument of a name (FAILED - 21)
#     pushes new instances into a class variable called @@all upon initialization (FAILED - 22)
#   @@all
#     is a class variable set to an array (FAILED - 23)
#   .all
#     is a class method that returns an array of all song instances that have been created (FAILED - 24)
#   #name
#     has a name (FAILED - 25)
#   #artist
#     belongs to an artist (FAILED - 26)
#   #artist_name
#     knows the name of its artist (FAILED - 27)

class Song

    attr_accessor :name, :artist
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def self.artist
        self
    end
    def artist_name
        @artist == nil ? nil : self.artist.name
    end
end