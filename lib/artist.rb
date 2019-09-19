class Artist
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def songs
    Song.all.select{|song|
      song if song.artist_name == self.name}
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end
  
  def self.song_count
    songs.length
  end
end