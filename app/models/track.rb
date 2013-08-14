class Track < ActiveRecord::Base
  has_many :gx_class_tracks
  has_many :gx_classes, through: :gx_class_tracks
  has_many :gx_class_sets, through: :gx_classes
end
