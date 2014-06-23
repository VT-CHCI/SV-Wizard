class ConferenceStatusesController < ApplicationController
  before_action :set_conference_status, only: [:show, :edit, :update, :destroy]

  # GET /conference_statuses
  # GET /conference_statuses.json
  def index
    @conference_statuses = ConferenceStatus.all
  end

  # GET /conference_statuses/1
  # GET /conference_statuses/1.json
  def show
  end

  # GET /conference_statuses/new
  def new
    @conference_status = ConferenceStatus.new
  end

  # GET /conference_statuses/1/edit
  def edit
  end

  # POST /conference_statuses
  # POST /conference_statuses.json
  def create
    @conference_status = ConferenceStatus.new(conference_status_params)

    respond_to do |format|
      if @conference_status.save
        format.html { redirect_to @conference_status, notice: 'Conference status was successfully created.' }
        format.json { render :show, status: :created, location: @conference_status }
      else
        format.html { render :new }
        format.json { render json: @conference_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conference_statuses/1
  # PATCH/PUT /conference_statuses/1.json
  def update
    respond_to do |format|
      if @conference_status.update(conference_status_params)
        format.html { redirect_to @conference_status, notice: 'Conference status was successfully updated.' }
        format.json { render :show, status: :ok, location: @conference_status }
      else
        format.html { render :edit }
        format.json { render json: @conference_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conference_statuses/1
  # DELETE /conference_statuses/1.json
  def destroy
    @conference_status.destroy
    respond_to do |format|
      format.html { redirect_to conference_statuses_url, notice: 'Conference status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conference_status
      @conference_status = ConferenceStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conference_status_params
      params.require(:conference_status).permit(:name)
    end
end
