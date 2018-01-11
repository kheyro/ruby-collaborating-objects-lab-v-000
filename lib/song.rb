class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    file = filename.split(" - ")
    new_song = Song.new("sssslearn")
  end

  def name=(name)
    @name = name
  end
end
