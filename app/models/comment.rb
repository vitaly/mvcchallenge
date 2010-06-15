class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :idea

  validates_presence_of :user_id, :idea_id, :comment
end
