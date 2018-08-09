class Cocktail < ApplicationRecord
  has_many :doses
  has_many :ingredients, dependent: :destroy

  validates :name, presence: :true, uniqueness: true

end
end
