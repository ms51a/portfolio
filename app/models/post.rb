class Post < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy
    #has_many :users, through: :likes
    #あってもなくてもよい？？？

    validates :user_id, {presence: true}

    def like?(user)
        likes.where(user_id: user.id).exists?
    end
end
