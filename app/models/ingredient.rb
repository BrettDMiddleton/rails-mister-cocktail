class Ingredient < ApplicationRecord
  # Associations
  has_many :doses

  # Validations
  validates :name, presence: true, uniqueness: true
end
