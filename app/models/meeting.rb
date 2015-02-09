class Meeting < ActiveRecord::Base
  belongs_to :organizer, class_name: 'User'
  has_many :responses

  validates :title, :date, :time, presence: true
  def current_user_response(user_id)
    responses.find_by(respondent_id: user_id)
  end
  #Client.where(:orders_count => [1,3,5])    -> SELECT * FROM clients WHERE (clients.orders_count IN (1,3,5))
  #where("bar LIKE ?", "%#{query}%")
  def self.filter(filter)
    meetings = Meeting.all
    filter.each do |name, value|
      if value != ""
        if value.class == Array
          meetings = meetings.where("#{name}: ?", "#{value}%");
        elsif name == "organizer"
          
        else
          meetings = meetings.where("#{name} LIKE ?", "#{value}%");
        end
      end
    end
    meetings
  end


end
