class Post < ApplicationRecord
    belongs_to :users

    validates :title, present:true
    validates :title, length: { maximum: 10 }
    validates :body, present:true
    validates :body, length: { maximum: 60 }

end
