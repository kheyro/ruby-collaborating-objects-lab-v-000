class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    file = filename.split(" - ")
    new_song = self.new("sdad")
    new_song.artist = file[0]
  end
end
