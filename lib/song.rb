class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    file = filename.split(" - ")
    new_song = Song.new("ssss")
    new_artist = Artist.new(new_song)
    new_artist.name = file[0]
  end
end
