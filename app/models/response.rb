class Response < ActiveRecord::Base
  belongs_to :meeting
  belongs_to :respondent, class_name: 'User'
  validates :response_status, inclusion: { in: %w(accepted declined maybe none)}

end
