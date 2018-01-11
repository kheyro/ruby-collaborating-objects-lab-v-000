class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def self.find_or_create_by_name(name)
    if !(self.all.detect { |artist| artist.name == name })
      artist = self.new(name)
      @@all << artist
    end
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def print_songs
    self.all.each { |song| puts "#{song.name}" }
  end
end
