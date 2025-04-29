class User < ApplicationRecord
  has_many :treatments, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :notifications, dependent: :destroy
end
