class Artist
  attr_accessor :name, :song, :genre

  @@all = []

  def self.all
    @@all
  end

  def new_song(name, genre)
    @song << name
    @genre << genre
  end

end
