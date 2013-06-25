class Post < ActiveRecord::Base
  attr_accessible :body, :topic
  validates :topic, presence: true
  validates :body, presence: true
  validates :user_id, presence: true
  belongs_to :user
end
