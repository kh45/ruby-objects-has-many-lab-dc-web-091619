class Post
  def initialize(title)
    @title = title
    @@all << self
  end
end