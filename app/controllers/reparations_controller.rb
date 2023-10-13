class ReparationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_reparation, only: %i[ show edit update destroy ]

  # GET /reparations or /reparations.json
  def index
    # if user is admin, show all reparations
    if current_user.admin?
      @pagy, @reparations = pagy(Reparation.all)
    else
      # if user is not admin, show only his reparations
      @reparations = Reparation.where(user_id: current_user.id)
    end
  end

  # GET /reparations/1 or /reparations/1.json
  def show
  end

  # GET /reparations/new
  def new
    @reparation = Reparation.new
  end

  # GET /reparations/1/edit
  def edit
  end

  # POST /reparations or /reparations.json
  def create
    @reparation = Reparation.new(reparation_params)

    respond_to do |format|
      if @reparation.save
        format.html { redirect_to reparation_url(@reparation), notice: "Reparation was successfully created." }
        format.json { render :show, status: :created, location: @reparation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reparation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reparations/1 or /reparations/1.json
  def update
    respond_to do |format|
      if @reparation.update(reparation_params)
        format.html { redirect_to reparation_url(@reparation), notice: "Reparation was successfully updated." }
        format.json { render :show, status: :ok, location: @reparation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reparation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reparations/1 or /reparations/1.json
  def destroy
    @reparation.destroy

    respond_to do |format|
      format.html { redirect_to reparations_url, notice: "Reparation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reparation
      @reparation = Reparation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reparation_params
      params.require(:reparation).permit(:vehicle_id, :service_id, :status, :start_time, :end_time, :observation)
    end
end
