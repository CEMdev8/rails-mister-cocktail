class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses #faut indiquer par quel chemin cocktails passe pr arriver aux ingredients

  validates :name, presence: :true, uniqueness: true
end
