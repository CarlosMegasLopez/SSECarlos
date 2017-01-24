class Admin::AssociationsController < ApplicationController

 layout 'admininterface'

 before_action :authenticate_user!

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
  			redirect_to ['admin', @empresa], notice: "Empresa Creada"
  		else
  			render :new
  		end
  end

  def show
  	@empresa= Association.find(params[:id])
  end

 def update
    @empresa=Association.find(params[:id])
      if @empresa.update association_params
        redirect_to ['admin', @empresa], notice: "Empresa Actualizada"
      else
        render :new
      end
  end

  def destroy
      @empresa = Association.find(params[:id])
      @empresa.destroy
      redirect_to admin_associations_path, notice: "Empresa Eliminada"
  end


  private
  	def association_params
  		params.require(:association).permit(:nombre, :contacto, :telefono, :correo_electronico)
  	end
end

