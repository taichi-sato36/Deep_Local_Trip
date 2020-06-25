class Post < ApplicationRecord

	has_many :post_comments, dependent: :destroy
	has_many :likes, dependent: :destroy
	belongs_to :user
	belongs_to :prefecture
	attachment :post_image
	# enum is_valid: {local: true, trip: false}
	validates :is_valid, inclusion: { in: [true , false] }
	validates :title, presence: true
	validates :address, presence: true
	validates :supplement, presence: true
	validates :text, presence: true

	def like_by?(user)
		likes.where(user_id: user.id).exists?
	end

end
