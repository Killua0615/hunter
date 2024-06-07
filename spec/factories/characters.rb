# spec/factories/characters.rb
FactoryBot.define do
  factory :character do
    sequence(:name) { |n| "Character#{n}" }
    DebutEpisode { 1 }
    association :affiliation

    after(:build) do |character|
      file_path = Rails.root.join('spec', 'support', 'images', 'test_image.jpg')
      character.image.attach(io: File.open(file_path), filename: 'test_image.jpg', content_type: 'image/jpeg')
    end
  end
end
