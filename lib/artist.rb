class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    self.songs << song
  end

  def find_or_create_by_name(name)

  end

  def self.all
    @@all
  end
end
