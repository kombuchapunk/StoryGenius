class Sentence < ActiveRecord::Base
  validates :words, :presence => true
end
