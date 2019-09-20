require 'pry'
require_relative "./song.rb"

class Artist

  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def add_song(song)
    song.artist = self
    Song.all.push(song)
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    new_song.artist = self
    Song.all.push(new_song)
  end

  def self.song_count
    songs_w_artist = Song.all.select { |song_instance| song_instance.artist != nil || [] }
    songs_w_artist.length
    #binding.pry
  end
  
  def songs 
    Song.all.select { |song_instance| song_instance.artist == self }
  end 

end

