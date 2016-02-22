class Post < ActiveRecord::Base

  belongs_to :category
belongs_to :user
  acts_as_taggable

	validates :title, presence: true, length: { minimum: 3 }

  extend FriendlyId
  friendly_id :title, use: :slugged

end
