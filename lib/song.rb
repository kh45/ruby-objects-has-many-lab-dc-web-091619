class Song
  def initialize(name)
    @name = name
    @@all << self
  end
end