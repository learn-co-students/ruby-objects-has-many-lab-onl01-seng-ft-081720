class Author

    attr_accessor :name, :title, :posts

    def initialize(name = nil)
        @name = name
        @posts = []
        @posts << self
    end

    def posts
        Post.all
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def self.post_count
        Post.all.count
    end
end