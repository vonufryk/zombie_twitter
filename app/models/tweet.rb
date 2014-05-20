class Tweet < ActiveRecord::Base
  
  validates :status, :text, presence: true
  
  belongs_to :user

end
