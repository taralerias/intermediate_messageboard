class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :title
  validates :content, :title, presence: true
end
