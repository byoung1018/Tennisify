class Meeting < ActiveRecord::Base
  belongs_to :organizer, class_name: 'User'
  has_many :responses

  def current_user_response(user_id)
    responses.find_by(respondent_id: user_id)
  end


end
