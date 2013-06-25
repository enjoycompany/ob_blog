class Post < ActiveRecord::Base
  attr_accessible :body, :topic
  validates :topic, presence: true
  validates :body, presence: true
end
