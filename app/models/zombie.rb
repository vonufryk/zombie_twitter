class Zombie < ActiveRecord::Base
  
  validates_presence_of :name
  
  #has_many :tweets

end
