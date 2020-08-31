class Recipe < ApplicationRecord
  has_many :instructions, :dependent => :destroy
  has_many :ingredients, :dependent => :destroy

  # accepts_nested_attributes_for :instructions, :ingredients
end
