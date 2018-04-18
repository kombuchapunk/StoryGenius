class Story < ActiveRecord::Base
  validates :name, :presence => true
  validates :imgLink, :presence => true
end
