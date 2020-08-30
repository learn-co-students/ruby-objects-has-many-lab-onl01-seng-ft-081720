require 'pry'
class Artist
  attr_accessor :name

  @@song_count = 1

  def initialize(name)
    @name = name
    @songs = [] 
  end

  def songs
    Song.all
    #binding.pry
  end

  def add_song(song)
    #pushes the song into the song array
     @songs << song
     #local self use
     song.artist = self
     #increase the song count by one the the song name
     @@song_count += 1
     #binding.pry
  end

   def add_song_by_name(song_name)
  #sets a constant for song and a new instance of song with argument song_name
     song = Song.new(song_name)
     #pushes the song into the song array
    @songs << song
    #set the local self to the artist of the song constant???
     song.artist = self
     @@song_count += 1
     #binding.pry
   end

   def self.song_count
     #binding.pry
     @@song_count
   end

end

#DONE NO ERRORS 