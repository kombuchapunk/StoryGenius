class User < ActiveRecord::Base
  has_many :comments
  has_many :sentences
  validates :username, :presence => true
end
