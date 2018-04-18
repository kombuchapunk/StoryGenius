class Comment < ActiveRecord::Base
  belongs_to :sentence
  belongs_to :user
  validates :words, :presence => true
end
