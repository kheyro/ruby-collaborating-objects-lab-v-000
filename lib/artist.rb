class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(title)
    @songs << new_song
    new_song = Song.new(title)
    new_song.artist = self
  end

end
