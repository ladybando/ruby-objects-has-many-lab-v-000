class Author
  attr_accessor :name, :songs

  def initialize(namw)
    @name = name
    @post = []
  end

  def add_post(post)
    @post << post
    post.author = self
  end

  def songs
    @songs
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

  @@song_count = 0


  def self.song_count
    @@song_count += 2
    @@song_count
    #binding.pry
    end

end
