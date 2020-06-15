class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy

       #   enum local:{a:0, b:1, c:2, d:3, e:4, f:5, g:6, h:7, i:8, j:9, k:10, l:11, m:12, n:13, o:14,
  			  # p:15, q:16, r:17, s:18, t:19, u:20, v:21, w:22, x:23, y:24, z:25, aa:26, ab:27, ac:28, 
  			  # ad:29, ae:30, af:31, ag:32, ah:33, ai:34, aj:35, ak:36, al:37, am:38, an:39, ao:40, ap:41, aq:42,
  			  # ar:43, as:44, at:45, au:46, av:47}

         enum local:{不明:0, 北海道:1, 青森:2, 秋田:3, 岩手:4, 山形:5, 宮城:6, 福島:7, 群馬:8, 栃木:9, 茨城:10, 埼玉:11, 東京:12, 千葉:13, 神奈川:14,
  			  新潟:15, 富山:16, 石川:17, 福井:18, 長野:19, 山梨:20, 静岡:21, 愛知:22, 岐阜:23, 滋賀:24, 三重:25, 京都:26, 大阪:27, 奈良:28, 
  			  和歌山:29, 兵庫:30, 鳥取:31, 岡山:32, 島根:33, 広島:34, 山口:35, 香川:36, 徳島:37, 愛媛:38, 高知:39, 福岡:40, 佐賀:41, 長崎:42,
  			  熊本:43, 大分:44, 宮崎:45, 鹿児島:46, 沖縄:47}

end
