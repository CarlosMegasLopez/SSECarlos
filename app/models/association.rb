class Association < ApplicationRecord

	validates :nombre, presence: true
	validates :contacto, presence: true
	validates :telefono, presence: true
	validates :correo_electronico, presence: true

end
