class Artist
  attr_accessor :name, :songs, :save

  @@all = []

  def initialize(name)
    @name = name
  end

  def add_song(title)
    new_song = Song.new(title)
    new_song.artist = self
  end

  def self.save
    @@all << self
  end

end
