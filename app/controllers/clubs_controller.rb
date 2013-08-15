class ClubsController < ApplicationController
  
  before_filter :get_club, except: :index

  def index
    @clubs = Club.all.order('city ASC')
    respond_to do |format|
      format.html
      format.json { render json: @clubs }
    end
  end
  
  def show
    @classes = @club.gx_class_sets.where(params)
  end

  private
  
  def get_club
    @club = Club.find_by(cAbbrv: params[:club_id])
  end

  def club_params
    params.require(:club).permit(:id,:cAbbrv,:city,:address,:brand,:phone,:link,:sfdc_name,:fb,:twitter,:timezone)
  end
end
