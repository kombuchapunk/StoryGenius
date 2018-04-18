class Sentence < ActiveRecord::Base
  belongs_to :story
  belongs_to :user
  has_many :comments
  validates :words, :presence => true
end
