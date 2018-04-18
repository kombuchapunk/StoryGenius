require 'rails_helper'

describe Comment do
  it { should validate_presence_of :words }
  it { should belong_to :user }
  it { should belong_to :sentence }
end
