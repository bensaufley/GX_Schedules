class Studio < ActiveRecord::Base
  belongs_to :club
  has_many :gx_class_sets
  has_many :gx_classes, through: :gx_class_sets
end
