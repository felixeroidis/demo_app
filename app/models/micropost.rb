class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to:user
  validates :user, presence: true    
  validates :content, length: { in: 1..140 }
end
