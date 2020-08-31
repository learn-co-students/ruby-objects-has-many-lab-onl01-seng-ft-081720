class Author 
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name 
  
  end 
  def posts 
    Post.all.select {|posts| posts.author == self }
end
def add_post(new_post)
  new_post.author = self
end
def add_post_by_title(title)
  x = Post.new(title)
  add_post(x)
end
def self.post_count 
  Post.all.count 
end
  
end 