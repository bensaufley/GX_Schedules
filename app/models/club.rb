class Club < ActiveRecord::Base
  has_many :club_users
  has_many :users, through: :club_users
end
