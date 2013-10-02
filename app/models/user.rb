class User < ActiveRecord::Base
  attr_accessible :active, :birthday, :name, :profile
  
  has_many :posts, :dependent => :destroy
    
end
