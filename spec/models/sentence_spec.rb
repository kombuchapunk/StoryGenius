require 'rails_helper'

describe Sentence do
  it { should validate_presence_of :words }
  it { should belong_to :story }
  it { should belong_to :user }
end
