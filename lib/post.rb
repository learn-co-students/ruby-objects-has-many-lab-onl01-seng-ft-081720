# Post
#   #new
#     is initialized with an argument of a title (FAILED - 13)
#     pushes new instances into a class variable called @@all upon initialization (FAILED - 14)
#   @@all
#     is a class variable set to an array (FAILED - 15)
#   .all
#     is a class method that returns an array of all post instances that have been created (FAILED - 16)
#   #title
#     has a title (FAILED - 17)
#   #author
#     belongs to an author (FAILED - 18)
#   #author_name
#     knows the name of its author (FAILED - 19)
#     returns nil if the post does not have an author (FAILED - 20)

class Post

    attr_accessor :title, :author
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end
    def self.all
        @@all
    end
    def self.author
        self
    end
    def author_name
        @author == nil ? nil : self.author.name
    end

end