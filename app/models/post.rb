class Post < ActiveRecord::Base
	has_many :comments, :dependent => :destroy
	has_many :tags
	accepts_nested_attributes_for :tags, :allow_destroy => true, :reject_if => proc {|attrs| attrs.all? { |k,v| v.blank?}}
  attr_accessible :body, :topic
  validates :topic, presence: true
  validates :body, presence: true
  validates :user_id, presence: true
  belongs_to :user
  attr_accessible :tags_attributes
end
