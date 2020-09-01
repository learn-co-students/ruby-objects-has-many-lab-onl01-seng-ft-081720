class Song 
  attr_accessor :title, :artist, :genre 
  
  @@all = []
  
  def initialize (title)
    @title = title
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def name 
    @title
  end
  
  def artist_name
    artist ? self.artist.name : nil
  end
end