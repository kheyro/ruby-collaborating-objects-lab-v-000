class Artist
  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all << self
  end
end
