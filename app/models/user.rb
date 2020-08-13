class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :posts
  validates :name, present:true
  validates :name, length: { minimum: 2 }
  validates :email, confirmation:true 
  validates :email, present:true
  validates :password, present:true
  validates :password, length: { minimum: 6 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
