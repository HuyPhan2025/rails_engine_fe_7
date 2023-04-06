require 'rails_helper'

RSpec.describe  "merchant show page" do
  describe "When I visit the /merchant/:id" do
    it "should see a list of items for that merchant" do
      visit '/merchants/1'
      
      expect(page).to have_content('Schroeder-Jerde')
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
      expect(page).to have_content(42.91)
    end
  end
end
