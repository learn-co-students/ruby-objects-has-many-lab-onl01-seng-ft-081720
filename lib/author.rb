class Author
    @@post_count=0
    attr_accessor :name, :title, :author
    def initialize(name)
        @name=name
    end
    def posts
        Post.all.select do |post|
            post.author == self
        end
    end
    def add_post(title)
        title.author = self
        @@post_count += 1
    end
    def add_post_by_title(title)
        title = Post.new(title)
        title.author = self
    end
    def self.post_count
        Post.all.count
    end
end