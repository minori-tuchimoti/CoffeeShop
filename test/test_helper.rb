ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
require "devise"  # ← これを追加

module ActiveSupport
  class TestCase
    include Devise::Test::IntegrationHelpers  # ← Deviseのテストヘルパーを読み込む

    parallelize(workers: :number_of_processors)
    fixtures :all

    # fixtureのパスワードは平文で書いてあるので、テスト実行時に
    # encrypted_passwordが空ならパスワードをセットして保存する
    setup do
      User.all.each do |user|
        if user.encrypted_password.blank?
          user.password = "password"
          user.save!
        end
      end
    end

    # 他に共通メソッドがあればここに書く
  end
end
