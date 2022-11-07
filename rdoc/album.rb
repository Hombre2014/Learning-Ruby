# An Album class that stores an array of songs
class Album
  include Enumerable

  # An array object of songs. Each song is a string
  attr_reader :songs

  # Creates a new Album instance with an emplty array
  def initialize
    @songs = []
  end

  # Add a song to the Album object's songs array
  def add_songs(song)
    songs << song
  end

  # Yield each song in the albul to a block
  def each
    songs.each do |song|
      yield song
    end
  end
end
