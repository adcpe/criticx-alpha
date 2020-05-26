class Review < ApplicationRecord
  belongs_to :user
  belongs_to :reviewable, polymorphic: true

  after_save do
    user = User.find(user_id)
    user.update(review_count: user.review_count + 1)
  end

  after_destroy do
    user = User.find(user_id)
    user.update(review_count: user.review_count - 1)
  end
end
