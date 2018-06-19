class Genre
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name)
    @@all << name
  end

  def self.all
    @@all
  end

end
