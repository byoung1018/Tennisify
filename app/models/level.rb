class Level < ActiveRecord::Base
  has_many :allowed_levels
  has_many :meetings, through: :allowed_levels
end
