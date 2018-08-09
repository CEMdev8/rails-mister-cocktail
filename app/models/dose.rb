class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient, dependent: :destroy

  validates :description, presence: :true
  validates :ingredient, uniqueness: {scope: :cocktail}

end
