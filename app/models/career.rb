class Career < ApplicationRecord
	has_many :generations
	has_many :graduates

	validates :descripcion, presence: true
end
