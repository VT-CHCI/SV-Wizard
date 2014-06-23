class AssignmentStatusesController < ApplicationController
  before_action :set_assignment_status, only: [:show, :edit, :update, :destroy]

  # GET /assignment_statuses
  # GET /assignment_statuses.json
  def index
    @assignment_statuses = AssignmentStatus.all
  end

  # GET /assignment_statuses/1
  # GET /assignment_statuses/1.json
  def show
  end

  # GET /assignment_statuses/new
  def new
    @assignment_status = AssignmentStatus.new
  end

  # GET /assignment_statuses/1/edit
  def edit
  end

  # POST /assignment_statuses
  # POST /assignment_statuses.json
  def create
    @assignment_status = AssignmentStatus.new(assignment_status_params)

    respond_to do |format|
      if @assignment_status.save
        format.html { redirect_to @assignment_status, notice: 'Assignment status was successfully created.' }
        format.json { render :show, status: :created, location: @assignment_status }
      else
        format.html { render :new }
        format.json { render json: @assignment_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignment_statuses/1
  # PATCH/PUT /assignment_statuses/1.json
  def update
    respond_to do |format|
      if @assignment_status.update(assignment_status_params)
        format.html { redirect_to @assignment_status, notice: 'Assignment status was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignment_status }
      else
        format.html { render :edit }
        format.json { render json: @assignment_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignment_statuses/1
  # DELETE /assignment_statuses/1.json
  def destroy
    @assignment_status.destroy
    respond_to do |format|
      format.html { redirect_to assignment_statuses_url, notice: 'Assignment status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment_status
      @assignment_status = AssignmentStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_status_params
      params.require(:assignment_status).permit(:name)
    end
end
