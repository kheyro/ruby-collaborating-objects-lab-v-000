class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    test = []
    @files = Dir.glob('#{self.path}/*.mp3')
    
    test
  end

  def import
    self.files.each { |file| Song.new_by_filename(file) }
  end
end
