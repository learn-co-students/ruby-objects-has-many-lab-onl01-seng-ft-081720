class Song

  @@all = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def artist=(artist)
    @artist = artist
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def self.all
    @@all
  end
end
