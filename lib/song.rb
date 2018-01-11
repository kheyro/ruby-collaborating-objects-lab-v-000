class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def new_by_filename(filename)
    Song.new(filename)
  end
end
