require 'rails_helper'

RSpec.describe Address do
  it  { is_expected.to validate_presence_of(:street) }
  it  { is_expected.to validate_length_of(:city).is_at_least(3) }

  describe "validations" do
    it "validates presence of street" do
      address = build(:address, street: nil)
      binding.break
      expect(address).to be_invalid
    end
  end
end
