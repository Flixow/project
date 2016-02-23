class Post < ActiveRecord::Base

  belongs_to :category
belongs_to :user
  acts_as_taggable

	validates :title, presence: true, length: { minimum: 3 }

  extend FriendlyId
  friendly_id :title, use: :slugged

<<<<<<< HEAD
  geocoded_by :location
  after_validation :geocode 

=======
>>>>>>> 93d15be64da8ecf17a78c880c05a99f621018a8b
end
