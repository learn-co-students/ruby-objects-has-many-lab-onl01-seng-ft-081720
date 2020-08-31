class Post


    attr_accessor :post, :author, :title

    @@all = []


    def initialize(title)
     @title = title
     save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
       @author == nil ? nil : self.author.name
    end
    
end