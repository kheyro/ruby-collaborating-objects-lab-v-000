class Song

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def artist=(name)
    if Song.artist == nil
      Song.artist = Artist.new(name)
    else
      Song.artist = name
    end
  end

  def artist
    @artist
  end

end
