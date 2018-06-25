class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :bookers

  attachment :profile_image

  validates :name, presence: true, length: { minimum: 2, maximum: 20 }
  validates :user_body, length: { maximum: 50 }

end

