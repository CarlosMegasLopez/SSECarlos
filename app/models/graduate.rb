class Graduate < ApplicationRecord
  belongs_to :career

   validates :nombre_egresado, presence: true
   validates :apellido_paterno_egresado, presence: true
   validates :apellido_materno_egresado, presence: true
   validates :sexo_egresado, presence: true
   validates :colonia_egresado, presence: true
   validates :calle_egresado, presence: true
   validates :codigo_postal_egresado, presence: true
   validates :celular_egresado, presence: true
   validates :otro_telefono_egresado, presence: true
   validates :correo_electronico_egresado, presence: true
   validates :status_egresado, presence: true


  def nombre_completo_egresado
	"#{nombre_egresado} #{apellido_paterno_egresado} #{apellido_materno_egresado}"
	end

end
