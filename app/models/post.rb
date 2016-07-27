class Post < ActiveRecord::Base
  validates :title, presence: true
  validate :correct_category
  validates :content, length: {minimum: 100}

  def correct_category
    if !["Fiction", "Non-Fiction"].include?(category)
      errors.add(:category, "invalid category")
    end
  end


end
