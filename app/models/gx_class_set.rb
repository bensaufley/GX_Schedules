class GxClassSet < ActiveRecord::Base  
  LEVELS = [['1-3','All Levels'],['1','Beginner'],['2','Intermediate'],['3','Advanced'],['1-2','Beginner to Intermediate'],['2-3','Intermediate to Advanced']]

  belongs_to :gx_class
  belongs_to :club
  belongs_to :instructor
  belongs_to :studio
  has_many :instances
  
  validates :club_id, :gx_class_id, :studio_id, :instructor_id, :start_date, :repeat_times, :start_time, :end_time, presence: true
  validates_associated :club, :gx_class, :studio, :instructor
  validates :level, inclusion: 0..(LEVELS.count-1)
#  validates :start_time
  
  after_create :create_child_instances

  def self.level_short
    LEVELS[level][0]
  end

  def self.level_long
    LEVELS[level][1]
  end
  
  def repeat_times
    @repeat_times ||= instances.empty? ? 1 : instances.count
  end
  def repeat_times=(value)
    attribute_will_change!('repeat_times') if repeat_times != value
    @repeat_times = value
  end

  private
  def create_child_instances
    (self.repeat_times.nil? ? 1 : repeat_times.to_i).times do |x|
      instances.create(effective_date: start_date + x.weeks)
    end
  end
end