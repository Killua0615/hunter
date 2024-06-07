# spec/models/character_spec.rb
require 'rails_helper'

RSpec.describe Character, type: :model do
  it 'is valid with valid attributes' do
    character = create(:character)
    expect(character).to be_valid
  end

  it 'has an attached image' do
    character = create(:character)
    expect(character.image).to be_attached
  end
end
