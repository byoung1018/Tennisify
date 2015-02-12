class AllowedLevel < ActiveRecord::Base
  belongs_to :level
  belongs_to :meeting
end
