class Comment < ApplicationRecord
    has_many :likes
    belongs_to :user
    has_many :comment_type, as: :comment_type
end