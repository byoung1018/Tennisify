class Gender < ActiveRecord::Base
  has_many :allowed_genders
  has_many :meetings, through: :allowed_genders
end
