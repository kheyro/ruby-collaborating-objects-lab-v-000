class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob('./db/mp3s/*.mp3')
  end
end
