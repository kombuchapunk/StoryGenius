require 'rails_helper'

describe Story do
  it { should validate_presence_of :name }
end
