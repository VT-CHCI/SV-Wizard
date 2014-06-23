class Task < ActiveRecord::Base
  belongs_to :conference
  belongs_to :location
end
