class ScheduleChange < ActiveRecord::Base
  belongs_to :gx_class_set
  has_one :instructor
  has_one :studio
end
