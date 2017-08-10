class Cocktail < ApplicationRecord
	has_many :doses
	has_many :ingridients,  through: :doses, dependent: :destroy
	validates :name, uniqueness: true
end
