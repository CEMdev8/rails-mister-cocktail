class Dose < ApplicationRecord
  belongs_to :cocktail, dependent: :destroy
  belongs_to :ingredient, dependent: :destroy

  validates :description, presence: :true

end
