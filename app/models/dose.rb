class Dose < ApplicationRecord
  belongs_to :cocktail, dependent: :destroy
  belongs_to :ingredient, dependent: :destroy

  validates :description, presence: :true
  A dose must have a description, a cocktail and an ingredient, and [cocktail, ingredient] pairings should be unique.
end
