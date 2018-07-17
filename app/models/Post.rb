class Post < ActiveRecord::Base

  validates :title, presence: true
  validates :text, presence: true, length: { in: 1..254 }
end