class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs << self
  end

  def add_song(title)
    new_song = Song.new(title)
    new_song.artist = self
  end

end
