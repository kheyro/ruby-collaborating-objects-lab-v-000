class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{self.path}/*.mp3")
    @files.map { |file| File.basename(file) }
  end

  def import
    @files.each do
      |file| Song.new_by_filename(file)
    end
  end
end
