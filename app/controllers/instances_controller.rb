class InstancesController < ApplicationController
  before_action :set_instance, only: [:show, :edit, :update, :destroy]
  before_action :set_club

  # GET /instances
  # def index
  #   @instances = Instance.all
  # end
  # 
  # # GET /instances/1
  # def show
  # end

  # GET /instances/1/edit
  def edit
    @instance.attributes.each do |k,v|
      if v.nil?
        @instance[k]=@instance.gx_class_set[k]
      end
    end
    @instance.start_time = @instance.start_time.to_s(:time)
    @instance.end_time   = @instance.end_time.to_s(:time)
  end

  # PATCH/PUT /instances/1
  def update
    @params = instance_params
    puts @params
    @params.delete_if{|k,v|
      puts [k,v]
      if ['start_time','end_time'].include? k
        v == @instance.gx_class_set[k].to_s(:time)
      else
        v == @instance.gx_class_set[k] || (Float(v) && Float(v) == @instance.gx_class_set[k])
      end
    }
    puts @params
    if @instance.update(@params)
      redirect_to club_path(@club, date: @instance.effective_date), notice: 'Instance was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /instances/1
  def destroy
    @instance.destroy
    redirect_to club_path(@club, date: @instance.effective_date), notice: 'Instance was successfully destroyed.'
  end

  private
    def set_club
      @club = Club.find_by(cAbbrv: params[:club_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_instance
      @instance = Instance.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def instance_params
      params.require(:instance).permit(:gx_class_set_id,:effective_date,:studio_id,:instructor_id,:start_time,:end_time,:canceled)
    end
end
