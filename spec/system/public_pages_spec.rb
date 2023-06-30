require 'rails_helper'

RSpec.describe "Public pages", type: :system do
  before do
    driven_by(:selenium, using: :chrome, screen_size: [1400, 1400])
  end

  pending "add some scenarios (or delete) #{__FILE__}"
end
