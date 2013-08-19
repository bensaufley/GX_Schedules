class GxClassSetsController < ApplicationController
  before_action :set_club
  before_action :set_gx_class_set, only: [:show, :edit, :update, :destroy]

  # GET /gx_class_sets
  #def index
  #  @gx_class_sets = GxClassSet.all
  #end

  # GET /gx_class_sets/1
  def show
  end

  # GET /gx_class_sets/new
  def new
    @gx_class_set = GxClassSet.new
    respond_to do |format|
      format.html
      format.js { render layout: false }
    end
  end

  # GET /gx_class_sets/1/edit
  def edit
    respond_to do |format|
      format.html
      format.js { render layout: false }
    end
  end

  # POST /gx_class_sets
  def create
    @gx_class_set = GxClassSet.new(gx_class_set_params)

    if @gx_class_set.save
      redirect_to @club, notice: 'Class set was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /gx_class_sets/1
  def update
    if @gx_class_set.update(gx_class_set_params)
      redirect_to @club, notice: 'Class set was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /gx_class_sets/1
  def destroy
    @gx_class_set.destroy
    redirect_to gx_class_sets_url, notice: 'Class set was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gx_class_set
      @gx_class_set = GxClassSet.find(params[:id])
    end
    
    def set_club
      @club = Club.find_by(cAbbrv: params[:club_id])
    end

    # Only allow a trusted parameter "white list" through.
    def gx_class_set_params
      params.require(:gx_class_set).permit(:gx_class_id, :studio_id, :instructor_id, :level, :repeat_times, :start_date, :start_time, :end_time, :reservable, :paid_class_csi_id, :reserve_max, :club_id)
    end
end
