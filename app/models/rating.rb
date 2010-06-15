class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :story

  validates_presence_of :user_id, :idea_id, :rating
  validates_numericality_of :rating
end
