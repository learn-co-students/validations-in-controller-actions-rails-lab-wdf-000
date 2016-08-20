class Post < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :category, presence: true, uniqueness: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validates :content, presence: true, uniqueness: true, length: {minimum: 100}
end
