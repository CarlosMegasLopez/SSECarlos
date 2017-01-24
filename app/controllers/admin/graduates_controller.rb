class Admin::GraduatesController < ApplicationController

  layout 'admininterface'

  before_action :authenticate_user!

  # GET /graduates
  # GET /graduates.json
  def index
    @graduates = Graduate.all
  end

  # GET /graduates/1
  # GET /graduates/1.json
  def show
     @graduate = Graduate.find(params[:id])
  end

  # GET /graduates/new
  def new
    @graduate = Graduate.new
  end

  # GET /graduates/1/edit
  def edit
    @graduate = Graduate.find(params[:id])
  end

  # POST /graduates
  # POST /graduates.json
  def create
    @graduate = Graduate.new(graduate_params)

    respond_to do |format|
      if @graduate.save
        format.html { redirect_to ['admin', @graduate], notice: 'Egresado Creado' }
        format.json { render :show, status: :created, location: @graduate }
      else
        format.html { render :new }
        format.json { render json: @graduate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /graduates/1
  # PATCH/PUT /graduates/1.json
  def update
    @graduate=Graduate.find(params[:id])
      if @graduate.update graduate_params
        redirect_to ['admin', @graduate], notice: "Egresado Actualizado"
      else
        render :new
      end
  end

  # DELETE /graduates/1
  # DELETE /graduates/1.json
  def destroy
    @graduate = Graduate.find(params[:id])
    @graduate.destroy
    redirect_to admin_graduates_path, notice: "Egresado Eliminado"
    end

  private
    def graduate_params
      params.require(:graduate).permit(:career_id, :nombre_egresado, :apellido_paterno_egresado, :apellido_materno_egresado, :sexo_egresado, :colonia_egresado, :calle_egresado, :codigo_postal_egresado, :celular_egresado, :otro_telefono_egresado, :correo_electronico_egresado, :status_egresado)
    end
end
