class GxClassSet < ActiveRecord::Base
  belongs_to :gx_class
  has_one :instructor
  has_one :studio
  has_many :reservations
end