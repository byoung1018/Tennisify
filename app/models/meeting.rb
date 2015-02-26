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

  validates :title, :date, :time, presence: true
  def current_user_response(user_id)
    responses.find_by(respondent_id: user_id)
  end
  #Client.where(:orders_count => [1,3,5])    -> SELECT * FROM clients WHERE (clients.orders_count IN (1,3,5))
  #where("bar LIKE ?", "%#{query}%")
  def self.filter(filter)
    meetings = Meeting.all
    date_fields = ['dateStart', 'dateEnd', 'timeStart', 'timeEnd']
    filter["filter"].each do |name, value|
      puts ""
      puts name
      puts value
      puts ""

      next if value == ""
      if value.class == Array
        table = name.to_sym
        attr = name.singularize.to_sym
        meetings = meetings.joins(table).where(table => {attr => value}).uniq
      elsif name == "organizer"
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
        # value = DateTime.parse(value);

        puts "here"
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

end
