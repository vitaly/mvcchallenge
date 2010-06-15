class User < ActiveRecord::Base
  has_many :ideas
  has_many :comments
  has_many :ratings

  validates_presence_of :email, :password, :full_name

  def self.authenticate(email, password)
    User.find_by_email_and_password(email, password)
  end
end
