class Club < ActiveRecord::Base
  has_many :club_users
  has_many :users, through: :club_users
  has_many :club_instructors
  has_many :instructors, through: :club_instructors
  has_many :studios
  has_many :gx_class_sets
  has_many :gx_classes, through: :gx_class_sets

  def get_schedule(from_date=Date.today, count=1)
    raise "from_date cannot be nil" if from_date.nil?
    raise "from_date must be a valid date" if !from_date.is_a?(Date) && !(from_date = Date.parse(from_date)).is_a?(Date)
    puts "from_date: #{from_date}"
    schedule = {}
    count.times do |x|
      date = from_date + x.days
      schedule["#{date}"]=gx_class_sets.for_date(date)
    end
    return schedule
  end
  
  def to_param
    self.cAbbrv
  end
end
