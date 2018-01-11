class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    title = filename.split(" - ")[1]
    Song.new(title)
  end
end
