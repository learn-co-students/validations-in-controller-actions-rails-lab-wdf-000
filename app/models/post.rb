class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 200 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} is not a Genre" }
end
