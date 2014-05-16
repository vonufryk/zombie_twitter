class Tweet < ActiveRecord::Base
  
  validates_presence_of :name
  
  belongs_to :zombie

end
