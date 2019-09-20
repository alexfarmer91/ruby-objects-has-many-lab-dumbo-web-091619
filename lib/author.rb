
class Author 

 attr_accessor :name
 
 @@all = []
 
 def initialize(name)
  @name = name
 end 

  def posts 
    Post.all.select { |post_instance| post_instance.author == self }
  end 

  def add_post(post_instance)
    post_instance.author = self
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    new_song.artist = self
  end


end 
