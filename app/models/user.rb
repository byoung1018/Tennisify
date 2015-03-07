require 'twilio-ruby'

class User < ActiveRecord::Base
  # todo change message for validation errors (says fname right now)
  has_many :responses, foreign_key: :respondent_id
  has_many :owned_meetings, class_name: 'Meeting', foreign_key: :organizer_id
  has_many :invites

  attr_reader :password

  after_initialize :ensure_session_token

  validates :password_digest, presence: true
  validates(
    :password,
    length: { minimum: 6, allow_nil: true }
  )
  validates :session_token, presence: true, uniqueness: true
  validates :fname, presence: true

  def age
    return nil if self.birthday == "" || self.birthday.nil?
    birthday = Date.parse(self.birthday)
    today = Date.today
    age = today.year - birthday.year
    if birthday.month > today.month ||
      (birthday.month == today.month && birthday.day > today.day)
      age -= 1
    end
    age
  end

  def self.filter(name)
    users = User.all
    users = users.where("fname LIKE ? or lname LIKE ? or fname LIKE ? or lname LIKE ?", "#{name}%", "#{name}%", "#{name.capitalize}%", "#{name.capitalize}%");

    users
  end

  def self.find_by_credentials(login, password)
    user = User.find_by(email: login)
    if user.nil?
      user = User.find_by(username: login)
    end
    return nil if user.nil?
    user.is_password?(password) ? user : nil
  end



  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64(16)
    self.save!
    self.session_token
  end

  private

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end
end
