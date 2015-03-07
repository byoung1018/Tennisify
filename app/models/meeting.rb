class Meeting < ActiveRecord::Base
  belongs_to :organizer, class_name: 'User'
  has_many :responses
  has_many :allowed_levels
  has_many :levels, through: :allowed_levels
  has_many :allowed_age_groups
  has_many :age_groups, through: :allowed_age_groups
  has_many :allowed_genders
  has_many :invites
  has_many :invited_users, through: :invites, source: :user
  has_many :genders, through: :allowed_genders


  validates :title, :organizer_id, :date, :time, :max_players, :public, :area, :location, presence: true

  def current_user_response(user_id)
    responses.find_by(respondent_id: user_id)
  end
  def self.filter(filter)
    meetings = Meeting.all
    date_fields = ['dateStart', 'dateEnd', 'timeStart', 'timeEnd']
    filter["filter"].each do |name, value|
      next if value == ""
      if value.class == Array
        table = name.to_sym
        attr = name.singularize.to_sym
        meetings = meetings.joins(table).where(table => {attr => value}).uniq
      elsif name == "organizer"
        puts
        meetings = meetings.where("organizer_id in (select id from users where users.fname like ?)", "%#{value}%")

      elsif name == "max_players"
        meetings = meetings.where("max_players = ?", "#{value}");
      elsif date_fields.include?(name)
        ['dateStart', 'dateEnd', 'timeStart', 'timeEnd']
        if name == "dateStart"
          meetings = meetings.where('Date(date) > ?', value)
        elsif name == 'dateEnd'
          meetings = meetings.where('Date(date) < ?', value)
        elsif name == 'timeStart'
          meetings = meetings.where('time > ?', value)
        elsif name == 'timeEnd'
          meetings = meetings.where('time < ?', value)
        end
      else
        meetings = meetings.where("#{name} LIKE ?", "#{value}%");
      end
    end

    meetings
  end

  def create_association_entry(entries, attr)
    attr_class = attr.camelize.constantize
    association_class = "Allowed#{attr.camelize}".constantize
    entries.each do |entry|
      attr_id = attr_class.find_by(attr => entry).id
      association_class.create!({meeting_id: self.id, "#{attr}_id" => attr_id})
    end
  end

  def val_arr_association(association)
    self.send("#{association}s").map do |obj|
      obj.send(association)
    end
  end

  def self.time_formated(time)
    hours = time.hour
    period = hours > 11 ? "pm" : "am";
    hours > 12 if hours -= 12
    min = time.min < 10 ? "0#{time.min}" : time.min

    "#{hours}:#{min} #{period}"
  end

  def self.send_messages(user_ids)
    @client = Twilio::REST::Client.new(twilio_account_sid, twilio_auth_token)
    user_ids.each do |id|
      user = User.find(id)
      if user.phone_status == "verified"
        message = "you have been invited tennis\n #{self.title}\nOrganizer: #{self.organizer.fname}\nLocation: #{self.location}\nDate:#{self.date}\nTime: #{Meeting.time_formated(self.time)}"
        @client.account.messages.create(:body => message,
        :to => user.phone_number,
        :from => "+14152129645")
      end

    end

  end



end
