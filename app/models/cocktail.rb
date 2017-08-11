class Cocktail < ApplicationRecord
	has_many :doses, dependent: :destroy, inverse_of: :cocktail
	has_many :ingredients, through: :doses
	validates :name, uniqueness: true, presence: :true
	mount_uploader :photo, CphotoUploader
	accepts_nested_attributes_for :doses, reject_if: :all_blank, allow_destroy: true
end
