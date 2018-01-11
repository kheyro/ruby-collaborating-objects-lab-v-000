class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    file = filename.split(" - ")
    new_song = self.new(file[1])
    new_song.name = file[1]
    new_song.artist = file[0]
  end
end
