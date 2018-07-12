class Post < ActiveRecord::Base

  validates :title, presence: true
  validates :text, presence: true, length: { in: 6..254 }
end