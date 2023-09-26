require 'rails_helper'

RSpec.describe Hastag, type: :model do
  describe 'associations' do
   it {should have_many(:taggins)}
   
  end 
end
