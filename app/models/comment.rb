class Comment < ActiveRecord::Base
  validates :words, :presence => true
end
