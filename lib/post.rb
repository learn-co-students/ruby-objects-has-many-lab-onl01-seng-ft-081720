class Post

    attr_accessor :title, :author

    @@all = []

    def initialize (title)
        @title = title
        @@all << self
        # save
    end

    # def save
    #     @@all << self
    # end

    def self.all
        @@all
    end

    def author_name
       @author == nil ? nil : self.author.name
    end

end