require 'rails_helper'

RSpec.describe "Public pages", type: :system do
  before do
    driven_by(:selenium, using: :chrome, screen_size: [1400, 1400])
  end

  describe "Homepage" do
    it "renders a greeting" do
      visit "/"
      expect(page).to have_content("Hello!")
    end
  end
end
