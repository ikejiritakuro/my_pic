class Tweet < ApplicationRecord
  with_options presence: true do
  validates :image
  validates :text 
  end

  belongs_to :user
  has_many :comments
  has_one_attached :image

  def self.search(search)
    if search != ""
      Tweet.where('text LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end
end
