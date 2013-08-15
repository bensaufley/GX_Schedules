class GxClassesController < ApplicationController
  before_action :set_gx_class, only: [:show, :edit, :update, :destroy]

  # GET /gx_classes
  def index
    @gx_classes = GxClass.all
  end

  # GET /gx_classes/1
  def show
  end

  # GET /gx_classes/new
  def new
    @gx_class = GxClass.new
  end

  # GET /gx_classes/1/edit
  def edit
  end

  # POST /gx_classes
  def create
    @gx_class = GxClass.new(gx_class_params)

    if @gx_class.save
      redirect_to @gx_class, notice: 'Gx class was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /gx_classes/1
  def update
    if @gx_class.update(gx_class_params)
      redirect_to @gx_class, notice: 'Gx class was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /gx_classes/1
  def destroy
    @gx_class.destroy
    redirect_to gx_classes_url, notice: 'Gx class was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gx_class
      @gx_class = GxClass.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gx_class_params
      params[:gx_class]
    end
end
