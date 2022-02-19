class Sneaker < ApplicationRecord
  # Attributes:
  # name, model, brand, condition, description, image, price

  # validations
  validates_presence_of :name
  validates_presence_of :model
  validates_length_of :description, within: 10..250, allow_nil: true
end