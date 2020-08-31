class Recipe < ApplicationRecord
  has_many :instructions
  has_many :ingredients

  # accepts_nested_attributes_for :instructions, :ingredients
end
