require 'rails_helper'

RSpec.describe Weather do
  describe ".call" do
    it "returns the current temperature" do
      allow(ThirdPartyService).to receive(:call).and_return(32)
      expect(Weather.call).to eq(32)
    end
  end
end