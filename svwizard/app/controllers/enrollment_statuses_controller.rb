class EnrollmentStatusesController < ApplicationController
  before_action :set_enrollment_status, only: [:show, :edit, :update, :destroy]

  # GET /enrollment_statuses
  # GET /enrollment_statuses.json
  def index
    @enrollment_statuses = EnrollmentStatus.all
  end

  # GET /enrollment_statuses/1
  # GET /enrollment_statuses/1.json
  def show
  end

  # GET /enrollment_statuses/new
  def new
    @enrollment_status = EnrollmentStatus.new
  end

  # GET /enrollment_statuses/1/edit
  def edit
  end

  # POST /enrollment_statuses
  # POST /enrollment_statuses.json
  def create
    @enrollment_status = EnrollmentStatus.new(enrollment_status_params)

    respond_to do |format|
      if @enrollment_status.save
        format.html { redirect_to @enrollment_status, notice: 'Enrollment status was successfully created.' }
        format.json { render :show, status: :created, location: @enrollment_status }
      else
        format.html { render :new }
        format.json { render json: @enrollment_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enrollment_statuses/1
  # PATCH/PUT /enrollment_statuses/1.json
  def update
    respond_to do |format|
      if @enrollment_status.update(enrollment_status_params)
        format.html { redirect_to @enrollment_status, notice: 'Enrollment status was successfully updated.' }
        format.json { render :show, status: :ok, location: @enrollment_status }
      else
        format.html { render :edit }
        format.json { render json: @enrollment_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrollment_statuses/1
  # DELETE /enrollment_statuses/1.json
  def destroy
    @enrollment_status.destroy
    respond_to do |format|
      format.html { redirect_to enrollment_statuses_url, notice: 'Enrollment status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrollment_status
      @enrollment_status = EnrollmentStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enrollment_status_params
      params.require(:enrollment_status).permit(:name)
    end
end
