class Enrollment < ActiveRecord::Base
  belongs_to :conference
  belongs_to :user
  belongs_to :enrollment_status
end
