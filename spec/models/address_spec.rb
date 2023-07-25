require 'rails_helper'

RSpec.describe Address do
  it  { is_expected.to validate_presence_of(:street) }
  it  { is_expected.to validate_length_of(:city).is_at_least(3) }
end