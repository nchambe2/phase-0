# Create a Playlist from Driver Code

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# Pseudocode



# Initial Solution
class Song
  attr_reader :song, :artist

  def initialize(song, artist)
      @song = song
      @artist = artist
  end

  def play
      "Now playing #{@song}."
  end

end

class Playlist
  attr_reader :songs

  def initialize(*songs)
      @songs = songs
      @list_of_songs = songs
  end

  def add(*songs)
      @list_of_songs << songs
  end

  def num_of_tracks
      @list_of_songs.flatten.count
  end

  def remove(song)
     @list_of_songs.flatten.delete(song)
  end

  def includes?(song)
    @list_of_songs.flatten.include?(song)
  end

  def play_all
    @list_of_songs.flatten.each { |song| p "Now playing #{song.song}." }
  end

  def display
    @list_of_songs.flatten.each_with_index do  |song, index|
      index += 1
      p "Track #{index}. #{song.song} by #{song.artist}."
    end
  end

end



# Refactored Solution






# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

p my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
p going_under.play
p my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
p my_playlist.play_all
p my_playlist.display




