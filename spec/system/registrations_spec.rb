require 'rails_helper'

RSpec.describe "Registrations", type: :system do
  before do
    driven_by(:selenium, using: :chrome, screen_size: [1400, 1400])
  end

  describe "on successful sign up" do
    it "logs the user in" do
      visit "/"
      click_on "Registration"
      fill_in "Email", with: "cezar@mixandgo.com"
      fill_in "Password", with: "secret"
      fill_in "Password confirmation", with: "secret"
      click_on "Submit"
      expect(page).to have_content("Welcome cezar@mixandgo.com")
    end
  end
end
