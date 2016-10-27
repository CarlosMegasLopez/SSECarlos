class Admin::CareersController < ApplicationController
  
 layout 'admininterface'

 before_action :authenticate_user!


  def index
  	@carreras=Career.all
  	#consulta del modelo student (SELECT)
  end

  def new
  	@carrera=Career.new
  	#crear instancia de objeto para inserar un registro a la base de datos
  end

  def show
  end

  def edit
   @carrera=Career.find(params[:id])
  end

  def create
  	@carrera=Career.new career_params 
  		if @carrera.save
  			redirect_to ['admin', @carrera], notice: "Carrera Creada"
  		else
  			render :new
  		end
  end

  def show
  	@carrera= Career.find(params[:id])
  end

  def update
  	@carrera=Career.find(params[:id])
  		if @carrera.update career_params
  			redirect_to ['admin', @carrera], notice: "Actualizado"
  		else
  			render :new
  		end
  end

  def destroy
  		@carrera = Career.find(params[:id])
  		@carrera.destroy
  		redirect_to admin_careers_path, notice: "Carrera Eliminada"
  end
  		

  private
  	def career_params
  		params.require(:career).permit(:descripcion)
  	end
end

