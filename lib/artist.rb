class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(title)

    new_song = Song.new(title)
      @songs << new_song
    new_song.artist = self
  end

end
