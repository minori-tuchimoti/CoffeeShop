class Coffee < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :recommendations, dependent: :destroy
end
