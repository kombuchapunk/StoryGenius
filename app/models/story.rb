class Story < ActiveRecord::Base
  has_many :sentences
  validates :name, :presence => true
  validates :imgLink, :presence => true

  def getPreview
    preview = ''
    letter_count = 0
    self.sentences.each do |sentence|
      preview = preview + sentence.words.capitalize + ". " 
    end
    if (preview.length > 150)
      preview = preview[0..150].gsub(/\s\w+\s*$/,'...')
    end
    return preview
  end

end
