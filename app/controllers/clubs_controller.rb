class ClubsController < ApplicationController

  def index
    @clubs = Club.all.order('city ASC')
    respond_to do |format|
      format.html
      format.json { render json: @clubs }
    end
  end

  private
  def club_params
    params.require(:club).permit(:id,:cAbbrv,:city,:address,:brand,:phone,:link,:sfdc_name,:fb,:twitter,:timezone)
  end
end
