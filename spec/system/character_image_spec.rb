# spec/system/character_image_spec.rb

require "rails_helper"

RSpec.describe "Character Image Display", type: :system do
  before do
    @affiliation = Affiliation.create!(
      AffiliationID: SecureRandom.uuid,
      name: "Test Affiliation"
    )

    @characters = [
      { name: "Character 1", image_path: 'spec/fixtures/files/test_image1.jpeg' },
      { name: "Character 2", image_path: 'spec/fixtures/files/test_image2.jpeg' },
      { name: "Character 3", image_path: 'spec/fixtures/files/test_image3.jpeg' }
    ].map do |character|
      Character.create!(
        characterID: SecureRandom.uuid,
        name: character[:name],
        AffiliationID: @affiliation.AffiliationID
      ).tap do |c|
        c.image.attach(io: File.open(Rails.root.join(character[:image_path])), filename: File.basename(character[:image_path]), content_type: 'image/jpeg')
      end
    end
  end

  it "displays the character images" do
    @characters.each do |character|
      visit character_path(character)

      # 画像が表示されていることを確認する
      expect(page).to have_css("img[src*='#{File.basename(character.image.blob.filename.to_s)}']")
    end
  end
end
