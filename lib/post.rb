require "pry"
class Post
    attr_accessor :title

    @@all = []
    def initialize(name)
        @title = name
        @@all << self
    end

    def author=(author_name)
        @author = author_name
    end

    def author
            @author
    end

    def self.all
        @@all
    end

    def author_name
        author.name if author
    end
end