class Tag < ActiveRecord::Base
  has_many :cards
  has_many :recipes, through: :cards
end
