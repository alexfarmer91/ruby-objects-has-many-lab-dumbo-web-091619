
def Post

  @@all = []
  
  attr_accessor :title, :artist

  def initialize(title)
    @title = title
    @@all.push(self)
  end

 def self.all 
   @@all
 end 







end 

