class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def posts
    @posts
  end

  def add_post_by_title(name)
    post = Post.new(name)
    @posts << post
    post.author = self
  end


  @@post_count = 0


  def self.post_count
    @@post_count += 2
    @@post_count
    #binding.pry
    end

end
