class Author

    attr_accessor :name, :posts

    def initialize(name)
        @name=name
    end

    def posts

    end

    def add_post

    end

    def add_post_by_title

    end

    def self.post_count
self.all.count
    end

end