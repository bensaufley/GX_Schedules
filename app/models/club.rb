class Club < ActiveRecord::Base
  has_many :club_users
  has_many :users, through: :club_users
  has_many :club_instructors
  has_many :instructors, through: :club_instructors
  has_many :studios
  
  def to_param
    self.cAbbrv
  end
end
