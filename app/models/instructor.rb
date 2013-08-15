class Instructor < ActiveRecord::Base
  has_many :club_instructors
  has_many :clubs, through: :club_instructors
  has_many :gx_class_sets
  has_many :gx_classes, through: :gx_class_sets
end
