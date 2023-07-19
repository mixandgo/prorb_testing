require 'rails_helper'

RSpec.describe Calculator do
  describe "#age" do
    it "returns the user's age" do
      user = double("User", date_of_birth: Date.new(2000, 1, 1))
      expect(Calculator.new(user).age).to eq(23)
    end
  end
end