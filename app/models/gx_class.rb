class GxClass < ActiveRecord::Base
  has_many :gx_class_sets
  has_many :gx_class_tracks
  has_many :tracks, through: :gx_class_tracks
  
  LEVELS = [['1-3','All Levels'],['1','Beginner'],['2','Intermediate'],['3','Advanced'],['1-2','Beginner to Intermediate'],['2-3','Intermediate to Advanced']]
end
