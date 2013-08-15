class Club < ActiveRecord::Base
  has_many :club_users
  has_many :users, through: :club_users
  has_many :club_instructors
  has_many :instructors, through: :club_instructors
  has_many :studios
  has_many :gx_classes
  has_many :gx_class_sets, through: :gx_classes
  
  def to_param
    self.cAbbrv
  end
end
