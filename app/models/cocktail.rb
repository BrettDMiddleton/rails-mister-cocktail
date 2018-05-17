class Cocktail < ApplicationRecord
  # Associations
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  # Validations
  validates :name, presence: true, uniqueness: true
end
