class CreateRecommendations < ActiveRecord::Migration[7.2]
  def change
    create_table :recommendations do |t|
      # このおすすめを投稿したユーザーとの関連
      t.references :user, null: false, foreign_key: true

      # おすすめされている喫茶店との関連
      t.references :coffeeshop, null: false, foreign_key: true

      # おすすめ理由（ユーザーのコメントなど）
      t.text :reason

      # 作成日時・更新日時（自動で管理される）
      t.timestamps
    end
  end
end
