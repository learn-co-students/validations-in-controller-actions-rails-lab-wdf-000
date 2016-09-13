class Post < ActiveRecord::Base

  validates :title, presence: true
  validates :content, length: { minimum: 20}
  validates :category, inclusion: %w(Fiction Non-Fiction)


end
