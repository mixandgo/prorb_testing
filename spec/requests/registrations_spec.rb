require 'rails_helper'

RSpec.describe "Registrations", type: :request do
  describe "POST /registrations" do
    it "creates a user and redirects" do
      user_info = {
        email: "jdoe@email.com",
        password: "asd123",
        password_confirmation: "asd123"
      }
      expect do
        post user_registration_path, params: { user: user_info }
      end.to change(User, :count).from(0).to(1)
      expect(response).to have_http_status(303)
      expect(response).to redirect_to(root_path)
    end
  end
end
