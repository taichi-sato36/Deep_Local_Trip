# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

prefectures = Prefecture.create(
	[	{name: "北海道"},{name: "青森"},{name: "秋田"},{name: "岩手"},{name: "山形"},{name: "宮城"},{name: "福島"},
		{name: "群馬"},{name: "栃木"},{name: "茨城"},{name: "埼玉"},{name: "東京"},{name: "千葉"},{name: "神奈川"},
		{name: "新潟"},{name: "富山"},{name: "石川"},{name: "福井"},{name: "長野"},{name: "山梨"},{name: "静岡"},
		{name: "愛知"},{name: "岐阜"},{name: "滋賀"},{name: "三重"},{name: "京都"},{name: "大阪"},{name: "奈良"},
		{name: "和歌山"},{name: "兵庫"},{name: "鳥取"},{name: "岡山"},{name: "島根"},{name: "広島"},{name: "山口"},
		{name: "香川"},{name: "徳島"},{name: "愛媛"},{name: "高知"},{name: "福岡"},{name: "佐賀"},{name: "長崎"},
		{name: "熊本"},{name: "大分"},{name: "宮崎"},{name: "鹿児島"},{name: "沖縄"},{name: "その他"}
	])
