class Recipe < ActiveRecord::Base
  has_many :cards
  has_many :tags, through: :cards
end
