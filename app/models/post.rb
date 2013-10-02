class Post < ActiveRecord::Base
  attr_accessible :description, :user_id
  
  belongs_to :user
  
  validates_length_of :description, :minimum => 1, :maximum => 140, :allow_blank => false
  
end
