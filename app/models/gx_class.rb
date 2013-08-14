class GxClass < ActiveRecord::Base
  has_many :gx_class_sets
  has_many :gx_class_tracks
  has_many :tracks, through: :gx_class_tracks
end
