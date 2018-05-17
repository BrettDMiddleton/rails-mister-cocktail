class Dose < ApplicationRecord
  # Associations
  belongs_to :cocktail
  belongs_to :ingredient

  # Validations
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }
end
