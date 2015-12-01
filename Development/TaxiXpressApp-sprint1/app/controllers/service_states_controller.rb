class ServiceStatesController < ApplicationController
  before_action :set_service_state, only: [:show, :edit, :update, :destroy]

  # GET /service_states
  # GET /service_states.json
  def index
    @service_states = ServiceState.all
  end

  # GET /service_states/1
  # GET /service_states/1.json
  def show
  end

  # GET /service_states/new
  def new
    @service_state = ServiceState.new
  end

  # GET /service_states/1/edit
  def edit
  end

  # POST /service_states
  # POST /service_states.json
  def create
    @service_state = ServiceState.new(service_state_params)

    respond_to do |format|
      if @service_state.save
        format.html { redirect_to @service_state, notice: 'Service state was successfully created.' }
        format.json { render :show, status: :created, location: @service_state }
      else
        format.html { render :new }
        format.json { render json: @service_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_states/1
  # PATCH/PUT /service_states/1.json
  def update
    respond_to do |format|
      if @service_state.update(service_state_params)
        format.html { redirect_to @service_state, notice: 'Service state was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_state }
      else
        format.html { render :edit }
        format.json { render json: @service_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_states/1
  # DELETE /service_states/1.json
  def destroy
    @service_state.destroy
    respond_to do |format|
      format.html { redirect_to service_states_url, notice: 'Service state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_state
      @service_state = ServiceState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_state_params
      params.require(:service_state).permit(:description)
    end
end
