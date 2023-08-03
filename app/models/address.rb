class Address < ApplicationRecord
  validates :street, presence: true
  validates :city, length: { minimum: 3 }
  belongs_to :user
end
