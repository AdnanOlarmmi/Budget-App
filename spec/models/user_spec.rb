require 'rails_helper'

RSpec.describe User, type: :model do
  # tests go here
  describe 'validations' do
    it 'is invalid without a name' do
      user = User.new(name: nil)
      user.valid?
      expect(user.errors).to have_key(:name)
    end
  end

  describe 'associations' do
    it 'has many posts' do
      user = User.reflect_on_association(:groups)
      expect(user.macro).to eq(:has_many)
    end
  end
end
