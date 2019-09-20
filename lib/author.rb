
class Author 

 attr_accessor :name
 
 @@all = []
 
 def initialize(name)
  @name = name
 end 

  def posts 
    Post.all.select { |post_instance| post_instance.author == self }
  end 






end 
