class GxClass < ActiveRecord::Base
  has_many :gx_class_sets
  has_many :gx_class_tracks
  has_many :tracks, through: :gx_class_tracks
  belongs_to :category
  
  validates :name, presence: true, uniqueness: true
  validates :category, presence: true
  validates_associated :category

end
