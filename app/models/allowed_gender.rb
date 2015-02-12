class AllowedGender < ActiveRecord::Base
  belongs_to :gender
  belongs_to :meeting
end
