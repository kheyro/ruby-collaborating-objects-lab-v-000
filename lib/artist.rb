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
    test = self.new(name) unless self.all.detect { |artist| artist.name == name }
    test.save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def print_songs
    self.songs.each { |song| puts "#{song.name}" }
  end

end
