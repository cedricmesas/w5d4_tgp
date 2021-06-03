class Gossip < ApplicationRecord
    belongs_to :user
    has_many :likes
    belongs_to :tags, optional: true
    has_many :comments, as: :comment_type
end
