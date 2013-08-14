class ClubInstructor < ActiveRecord::Base
  belongs_to :club
  belongs_to :instructor
end
