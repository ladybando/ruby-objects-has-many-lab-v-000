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

  def post
    @post
  end

  def add_post_by_title(name)
    post = Post.new(name)
    @post << post
    post.author = self
  end

  @@post_count = 0


  def self.post_count
    @@post_count += 2
    @@post_count
    #binding.pry
    end

end
