class Post < ApplicationRecord

	has_many :post_comments, dependent: :destroy
	has_many :likes, dependent: :destroy
	belongs_to :user
	belongs_to :prefecture
	attachment :post_image
	validates :is_valid, inclusion: { in: [true , false] }
	# 空白を制限
	validates :title, presence: true
	validates :address, presence: true
	validates :supplement, presence: true
	validates :text, presence: true
	validates :post_image, presence: true
# いいね機能のメソッド
	def like_by?(user)
		likes.where(user_id: user.id).exists?
	end

end
