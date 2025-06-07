class CreateCoffeeshops < ActiveRecord::Migration[7.2]
  def change
    create_table :coffees do |t|
      t.string :name           # 喫茶店の名前
      t.text :description      # 喫茶店の説明（詳細情報など）
      t.string :address        # 喫茶店の住所
      t.float :latitude        # 緯度（地図表示用）
      t.float :longitude       # 経度（地図表示用）
      t.string :image_url      # 喫茶店の画像URL

      t.timestamps             # 作成日時・更新日時（自動で管理）
    end
  end
end
