class Song
    attr_accessor :name, :artist
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
       @artist == nil ? nil : self.artist.name
    end
end








# rspec ./spec/artist_spec.rb:8 # Artist #new is initialized with a name
# rspec ./spec/artist_spec.rb:14 # Artist #name has an attr_accessor for name
# rspec ./spec/artist_spec.rb:20 # Artist #songs has many songs
# rspec ./spec/artist_spec.rb:29 # Artist #add_song takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist
# rspec ./spec/artist_spec.rb:38 # Artist #add_song_by_name takes in an argument of a song name, creates a new song with it and associates the song and artist
# rspec ./spec/artist_spec.rb:46 # Artist .song_count is a class method that returns the total number of songs associated to all existing artists
# rspec ./spec/author_spec.rb:8 # Author #new is initialized with a name
# rspec ./spec/author_spec.rb:14 # Author #name has an attr_accessor for name
# rspec ./spec/author_spec.rb:20 # Author #posts has many posts
# rspec ./spec/author_spec.rb:29 # Author #add_post takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author
# rspec ./spec/author_spec.rb:38 # Author #add_post_by_title takes in an argument of a post title, creates a new post with it and associates the post and author
# rspec ./spec/author_spec.rb:47 # Author .post_count is a class method that returns the total number of posts associated to all existing authors
# rspec ./spec/post_spec.rb:12 # Post #new is initialized with an argument of a title
# rspec ./spec/post_spec.rb:16 # Post #new pushes new instances into a class variable called @@all upon initialization
# rspec ./spec/post_spec.rb:22 # Post @@all is a class variable set to an array
# rspec ./spec/post_spec.rb:28 # Post .all is a class method that returns an array of all post instances that have been created
# rspec ./spec/post_spec.rb:34 # Post #title has a title
# rspec ./spec/post_spec.rb:40 # Post #author belongs to an author
# rspec ./spec/post_spec.rb:48 # Post #author_name knows the name of its author
# rspec ./spec/post_spec.rb:54 # Post #author_name returns nil if the post does not have an author
# rspec ./spec/song_spec.rb:12 # Song #new is initialized with an argument of a name
# rspec ./spec/song_spec.rb:16 # Song #new pushes new instances into a class variable called @@all upon initialization
# rspec ./spec/song_spec.rb:22 # Song @@all is a class variable set to an array
# rspec ./spec/song_spec.rb:28 # Song .all is a class method that returns an array of all song instances that have been created
# rspec ./spec/song_spec.rb:34 # Song #name has a name
# rspec ./spec/song_spec.rb:40 # Song #artist belongs to an artist
# rspec ./spec/song_spec.rb:48 # Song #artist_name knows the name of its artist
# rspec ./spec/song_spec.rb:54 # Song #artist_name returns nil if the song does not have an artist
