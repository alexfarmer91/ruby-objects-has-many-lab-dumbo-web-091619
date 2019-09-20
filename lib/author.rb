
def Author 

 attr_accessor :name
 
 @@all = []
 
 def initialize(name)
  @name = name
 end 

  def posts 
    Post.all.select { |song_instance| song_instance.artist == self }
  end 






end 
