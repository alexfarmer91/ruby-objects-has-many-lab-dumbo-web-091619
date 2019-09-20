
class Post

  @@all = []
  
  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @@all.push(self)
  end

 def self.all 
   @@all
 end 

 def author_name
   @author.name unless @author.name == nil
 else 
   nil
 end 
 end 





end 

