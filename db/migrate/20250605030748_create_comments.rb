class CreateComments < ActiveRecord::Migration[7.2]
  def change
    create_table :comments do |t|
      
      # ユーザーとの関連（誰がコメントしたか）
      t.references :user, null: false, foreign_key: true

      # 喫茶店との関連（どのお店に対するコメントか）
      t.references :coffeeshop, null: false, foreign_key: true

      # コメント本文
      t.text :content

       # 作成日時・更新日時（自動追加される）
      t.timestamps
    end
  end
end
