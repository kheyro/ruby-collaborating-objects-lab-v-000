class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob('#{self.path}/*.mp3')
    @files = @files.map {|f| f.split("").slice(21, f.length).join("")}
  end
end
