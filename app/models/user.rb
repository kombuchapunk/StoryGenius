class User < ActiveRecord::Base
  validates :username, :presence => true
end
