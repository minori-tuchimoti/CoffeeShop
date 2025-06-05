# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      ## Database authenticatable
      ## 認証に必要なカラム（必須）
      t.string :email,              null: false, default: ""    # メールアドレス
      t.string :encrypted_password, null: false, default: ""    # 暗号化されたパスワード

      ## パスワード再設定機能(Recoverable)
      t.string   :reset_password_token      # パスワード再設定用トークン
      t.datetime :reset_password_sent_at    # トークンが送信された日時

      ## ログイン状態の保持（Rememberable）
      t.datetime :remember_created_at     # remember me 機能で使用

      ## サインイン履歴の追跡（Trackable）※使う場合はコメントアウトを外す
      # t.integer  :sign_in_count, default: 0, null: false   # サインイン回数
      # t.datetime :current_sign_in_at                       # 現在のサインイン日時
      # t.datetime :last_sign_in_at                          # 最後のサインイン日時
      # t.string   :current_sign_in_ip                       # 現在のIPアドレス
      # t.string   :last_sign_in_ip                          # 最後のIPアドレス

      ## メール認証機能（Confirmable）※使う場合はコメントアウトを外す
      # t.string   :confirmation_token                                   # 確認用トークン
      # t.datetime :confirmed_at                                         # メール確認日時
      # t.datetime :confirmation_sent_at                                 # メール送信日時
      # t.string   :unconfirmed_email # Only if using reconfirmable      # メール変更時の一時保存先

      ## アカウントロック機能（Lockable）※使う場合はコメントアウトを外す
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts   # ログイン失敗回数
      # t.string   :unlock_token # Only if unlock strategy is :email or :both                              # ロック解除トークン
      # t.datetime :locked_at                                                                              # ロックされた日時


      t.timestamps null: false     # 作成日時・更新日時
    end

    ## インデックス（高速検索・一意性制約）
    add_index :users, :email,                unique: true         # メールアドレスは一意
    add_index :users, :reset_password_token, unique: true         # トークンも一意
    # add_index :users, :confirmation_token,   unique: true       # Confirmableを使うとき
    # add_index :users, :unlock_token,         unique: true       # Lockableを使うとき
  end
end
