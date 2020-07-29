class Recipe < ApplicationRecord
  has_many :instructions
  has_many :ingredients
end
