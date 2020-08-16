class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :posts
  validates :name, presence: true, length: { minimum: 4, maximum: 16 }
  validates :email, confirmation: true
  validates :email, presence: true
  validates :password, presence: true
  validates :password, length: { minimum: 6 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
