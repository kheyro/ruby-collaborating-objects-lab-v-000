class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob('#{self.path}/*.mp3')
    @files = @files.map { |fpath| File.basename fpath }
    @files
  end

  def import
    self.files.each { |file| Song.new_by_filename(file) }
  end
end
