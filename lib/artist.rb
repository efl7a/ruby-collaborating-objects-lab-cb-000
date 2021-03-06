class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    self.all.find{|artist| artist.name == artist_name} || Artist.new(artist_name)
  end

  def print_songs
      self.songs.each do |song|
        puts song.name
      end
    end
end
