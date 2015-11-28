class EstadoServiciosController < ApplicationController
  before_action :set_estado_servicio, only: [:show, :edit, :update, :destroy]

  # GET /estado_servicios
  # GET /estado_servicios.json
  def index
    @estado_servicios = EstadoServicio.all
  end

  # GET /estado_servicios/1
  # GET /estado_servicios/1.json
  def show
  end

  # GET /estado_servicios/new
  def new
    @estado_servicio = EstadoServicio.new
  end

  # GET /estado_servicios/1/edit
  def edit
  end

  # POST /estado_servicios
  # POST /estado_servicios.json
  def create
    @estado_servicio = EstadoServicio.new(estado_servicio_params)

    respond_to do |format|
      if @estado_servicio.save
        format.html { redirect_to @estado_servicio, notice: 'Estado servicio was successfully created.' }
        format.json { render :show, status: :created, location: @estado_servicio }
      else
        format.html { render :new }
        format.json { render json: @estado_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estado_servicios/1
  # PATCH/PUT /estado_servicios/1.json
  def update
    respond_to do |format|
      if @estado_servicio.update(estado_servicio_params)
        format.html { redirect_to @estado_servicio, notice: 'Estado servicio was successfully updated.' }
        format.json { render :show, status: :ok, location: @estado_servicio }
      else
        format.html { render :edit }
        format.json { render json: @estado_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estado_servicios/1
  # DELETE /estado_servicios/1.json
  def destroy
    @estado_servicio.destroy
    respond_to do |format|
      format.html { redirect_to estado_servicios_url, notice: 'Estado servicio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estado_servicio
      @estado_servicio = EstadoServicio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estado_servicio_params
      params.require(:estado_servicio).permit(:IdEstadoServicio, :Descripcion)
    end
end
