class GxClassSet < ActiveRecord::Base
  
  LEVELS = [['1-3','All Levels'],['1','Beginner'],['2','Intermediate'],['3','Advanced'],['1-2','Beginner to Intermediate'],['2-3','Intermediate to Advanced']]

  belongs_to :gx_class
  belongs_to :club
  has_one :instructor
  has_one :studio
  has_many :reservations
  has_many :schedule_changes
  
  validates :club_id, :gx_class_id, :studio_id, :instructor_id, :level, :start_date, :repeat_times, :start_time, :end_time, :reservable, :paid_class_csi_id, :reserve_max, presence: true
  validates_associated :club, :gx_class, :studio, :instructor
  validates :level, inclusion: 0..(LEVELS.count-1)
  
  def self.level_short
    LEVELS[level][0]
  end
  def level_long
    LEVELS[level][1]
  end
  
  def self.for_date(date)
    self.includes(:schedule_changes).where("`start_date` <= ? AND ? <= ADDDATE(`start_date`,INTERVAL `repeat_times` WEEK) AND DAYOFWEEK(`start_date`) = ? AND schedule_changes.effective_date = ?", date, date, date.strftime('%w').to_i+1, date).order('`start_time` ASC, `end_time` ASC')
  end
end