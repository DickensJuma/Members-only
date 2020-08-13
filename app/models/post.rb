class Post < ApplicationRecord
    belongs_to :user
    validates :user_id, presence: true
    validates :title, presence: true
    validates :title, length: { maximum: 25 }
    validates :body, presence: true
    validates :body, length: { maximum: 150 }

end
