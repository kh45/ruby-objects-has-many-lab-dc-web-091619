class Artist
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def songs
    Song.all.select{|song|
      song if song.artist_name == self}
  end
end