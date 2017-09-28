class Recipe < ActiveRecord::Base
  has_many :cards
  has_many :tags, through: :cards
  has_and_belongs_to_many :ingredients
end
