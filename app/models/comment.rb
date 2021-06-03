class Comment < ApplicationRecord
    belongs_to: user
    has_many: likes
    belongs_to: comment_type, as: :comment_type
end
