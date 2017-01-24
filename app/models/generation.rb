class Generation < ApplicationRecord
  belongs_to :career


  validates :descripcion_generacion, presence: true
end
