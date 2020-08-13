class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :posts
  # validates :name, presence: true
  # validates :name, length: { minimum: 2 }
  validates :email, confirmation: true 
  validates :email, presence: true
  validates :password, presence: true
  validates :password, length: { minimum: 6 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
