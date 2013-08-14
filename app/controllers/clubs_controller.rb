class ClubsController < ApplicationController

  private
  def club_params
    params.require(:club).permit(:id,:cAbbrv,:city,:address,:brand,:phone,:link,:sfdc_name,:fb,:twitter,:timezone)
  end
end
