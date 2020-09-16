class Recipe < ApplicationRecord
  has_many :instructions, :dependent => :destroy
  has_many :ingredients, :dependent => :destroy
  accepts_nested_attributes_for :ingredients, allow_destroy: true, update_only: true
  accepts_nested_attributes_for :instructions, allow_destroy: true, update_only: true
end
