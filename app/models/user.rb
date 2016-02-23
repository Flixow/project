class User < ActiveRecord::Base

  has_many :posts
  has_many :groups_users
  has_many :groups, through: :groups_users


  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  geocoded_by :address
  after_validation :geocode 
end
