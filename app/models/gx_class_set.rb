class GxClassSet < ActiveRecord::Base
  belongs_to :gx_class
  belongs_to :club
  has_one :instructor
  has_one :studio
  has_many :reservations
  has_many :schedule_changes
  
  def self.for_date(date)
    self.includes(:schedule_changes).where("`start_date` <= ? AND ? <= ADDDATE(`start_date`,INTERVAL `repeat_times` WEEK) AND DAYOFWEEK(`start_date`) = ? AND schedule_changes.effective_date = ?", date, date, date.strftime('%w').to_i+1, date).order('`start_time` ASC, `end_time` ASC')
  end
end