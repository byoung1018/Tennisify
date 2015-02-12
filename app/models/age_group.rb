class AgeGroup < ActiveRecord::Base
  has_many :allowed_age_group
  has_many :meetings, through: :allowed_age_group
end
