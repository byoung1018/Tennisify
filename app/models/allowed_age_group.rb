class AllowedAgeGroup < ActiveRecord::Base
  belongs_to :age_group
  belongs_to :meeting
end
