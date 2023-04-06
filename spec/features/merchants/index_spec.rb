require 'rails_helper'

RSpec.describe 'Merchant Index Page' do
  describe "When I visit /merchants" do
    it "should see a list of merchants by name as a link" do
      visit "/merchants"

      expect(page).to have_link("Schroeder-Jerde")
      expect(page).to have_link("Klein, Rempel and Jones")
      expect(page).to have_link("Willms and Sons")

      click_link("Schroeder-Jerde")
      expect(current_path).to eq("/merchants/1")
    end
  end
end