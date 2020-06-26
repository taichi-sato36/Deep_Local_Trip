class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :like_posts, through: :likes, source: :post
  attachment :profile_image
  # 空欄を制限
  validates :name, presence: true

# プロフィールに出身地の表示用
         enum local:{不明:0, 北海道:1, 青森:2, 秋田:3, 岩手:4, 山形:5, 宮城:6, 福島:7, 群馬:8, 栃木:9, 茨城:10, 埼玉:11, 東京:12, 千葉:13, 神奈川:14,
  			  新潟:15, 富山:16, 石川:17, 福井:18, 長野:19, 山梨:20, 静岡:21, 愛知:22, 岐阜:23, 滋賀:24, 三重:25, 京都:26, 大阪:27, 奈良:28, 
  			  和歌山:29, 兵庫:30, 鳥取:31, 岡山:32, 島根:33, 広島:34, 山口:35, 香川:36, 徳島:37, 愛媛:38, 高知:39, 福岡:40, 佐賀:41, 長崎:42,
  			  熊本:43, 大分:44, 宮崎:45, 鹿児島:46, 沖縄:47}

end
