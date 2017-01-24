class Admin::GenerationsController < ApplicationController
  
  layout 'admininterface'

  before_action :authenticate_user!

  def index
    @generations = Generation.all
  end

  # GET /generations/1
  # GET /generations/1.json
  def show
     @generation = Generation.find(params[:id])
  end

  # GET /generations/new
  def new
    @generation = Generation.new
  end

  # GET /generations/1/edit
  def edit
    @generation = Generation.find(params[:id])
  end

  # POST /generations
  # POST /generations.json
  def create
    @generation = Generation.new(generation_params)

    respond_to do |format|
      if @generation.save
        format.html { redirect_to ['admin', @generation], notice: 'Generación Creada' }
        format.json { render :show, status: :created, location: @generation }
      else
        format.html { render :new }
        format.json { render json: @generation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generations/1
  # PATCH/PUT /generations/1.json
  def update
     @generation=Generation.find(params[:id])
      if @generation.update generation_params
        redirect_to ['admin', @generation], notice: "Generación Actualizada"
      else
        render :new
      end
  end

  # DELETE /generations/1
  # DELETE /generations/1.json
  def destroy
    @generation = Generation.find(params[:id])
    @generation.destroy
    redirect_to admin_generations_path, notice: "Generación Eliminada"
    end

  private
    def generation_params
      params.require(:generation).permit(:career_id, :descripcion_generacion)
    end
end
