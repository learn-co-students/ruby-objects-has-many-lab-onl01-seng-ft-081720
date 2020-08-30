require 'pry'
class Author

  attr_accessor :name

  @@post_count = 1

  
  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    Post.all.select {|post| post.author = self}
  end

  def add_post_by_title(title)
     post = Post.new(title)
     @posts << post
     post.author = self
     @@post_count += 1
  end

  def add_post(post)
    @@post_count += 1
    @posts << post
    post.author = self
  end

  def self.post_count
    @@post_count
  
  end
  #binding.pry
end

#Finally all four are passing and 
#somehow they are connected because 
#this one would not pass until I finsihed the other 3


#Some of my other attempts

  # def post
  #   #Post.all
  #   #binding.pry
  # end

  # def add_post(post)
  #   @posts << post
  #   post.author = self
  #   @@post_count += 1
  # end

  

  # def self.post_count
  #   @@post_count
  # end

  # def posts
  #   Post.all
  # end