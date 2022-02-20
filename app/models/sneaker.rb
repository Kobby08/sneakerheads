class Sneaker < ApplicationRecord
  # Attributes:
  # name, model, brand, condition, description, image, price

  # friendly_id
  extend FriendlyId
  friendly_id :name, use: :slugged

  # associations
  belongs_to :user

  # validations
  validates_presence_of :name
  validates_presence_of :model
  validates_length_of(
    :description,
    within: 10..250,
    allow_nil: true,
    allow_blank: true,
  )
end
