class Idea < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :ratings

  validates_presence_of :user_id, :title, :description
end
