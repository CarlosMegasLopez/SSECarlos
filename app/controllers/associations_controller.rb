class AssociationsController < ApplicationController
  def index
  	@empresas=Association.all
  	#consulta del modelo student (SELECT)
  end

  def new
  	@empresa=Association.new
  	#crear instancia de objeto para inserar un registro a la base de datos
  end

  def show
  end

  def edit
   @empresa=Association.find(params[:id])
  end

  def create
  	@empresa=Association.new association_params 
  		if @empresa.save
  			redirect_to @empresa, notice: "Empresa Creada"
  		else
  			render :new
  		end
  end

  def show
  	@empresa= Association.find(params[:id])
  end

  private
  	def association_params
  		params.require(:association).permit(:nombre, :contacto, :telefono, :correo_electronico)
  	end
end

