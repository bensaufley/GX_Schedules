class GxClassSet < ActiveRecord::Base
  belongs_to :gx_class
  belongs_to :club
  has_one :instructor
  has_one :studio
  has_many :reservations
  
  def self.for_date(date)
    self.where("`start_date` <= ? AND ? <= ADDDATE(`start_date`,INTERVAL `repeat_times` WEEK) AND DAYOFWEEK(`start_date`) = ?", date, date, date.strftime('%w').to_i+1)
  end
end