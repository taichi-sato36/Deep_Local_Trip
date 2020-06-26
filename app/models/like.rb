class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :user_id, uniqueness: { scope: :post_id } # 一人のユーザーは一つの投稿に対して１いいねという制約
end
