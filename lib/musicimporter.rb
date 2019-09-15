class MusicImporter
  attr_accessor :path, :song, :artist, :genre 
  
  def initialize(path) 
    @path = path 
  end 
  
  def files 
    Dir.entries(@path).select! {|entry| entry.end_with?(".mp3")}
  end  
  
  def import 
    self.files.each do |filename| 
      song.create_from_filename(filename)
    end 
  end 
end 