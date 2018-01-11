class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    file = filename.split(" - ")
    new_song = Song.new(file[1])
    new_song.artist = Artist.find_or_create_by_name(file[1])
    new_song
  end

end
