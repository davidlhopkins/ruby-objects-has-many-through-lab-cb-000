class Artist
  attr_accessor :name, :song, :genre

  @@all = []

  def initialize(name)
    @name = name
  end

  def Artist.all
    @@all
  end

  def new_song(name, genre)
    @song << name
    @genre << genre
  end

end
